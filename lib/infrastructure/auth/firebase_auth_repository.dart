import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:domain_driven_design_note_app/domain/auth/auth_failures.dart';
import 'package:domain_driven_design_note_app/domain/auth/base_auth_repository.dart';
import 'package:domain_driven_design_note_app/domain/core/unique_id.dart';
import 'package:domain_driven_design_note_app/domain/user/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: BaseAuthRepository)
class FirebaseAuthRepository implements BaseAuthRepository {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  FirebaseAuthRepository(this._firebaseAuth, this._googleSignIn);

  @override
  UserEntity? getSignedInUser() {
    final firebaseUser = _firebaseAuth.currentUser;
    if (firebaseUser != null) {
      return UserEntity(
        id: UniqueId.fromUniqueString(firebaseUser.uid),
      );
    } else {
      return null;
    }
  }

  @override
  Future<Either<AuthFailure, Unit?>> registerWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: email);
    } on FirebaseAuthException catch (e) {
      log(e.toString());
      if (e.code == 'email-already-in-use') {
        return const Left(AuthFailure.emailAlreadyExists);
      } else {
        return const Left(AuthFailure.generalFailure);
      }
    }
    return const Right(null);
  }

  @override
  Future<Either<AuthFailure, Unit?>> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: email);
    } on FirebaseAuthException catch (e) {
      log(e.toString());
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        return const Left(AuthFailure.invalidEmailOrPassword);
      } else {
        return const Left(AuthFailure.generalFailure);
      }
    }
    return const Right(null);
  }

  @override
  Future<Either<AuthFailure, Unit?>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return const Left(AuthFailure.cancelledByUser);
      } else {
        final googleAuth = await googleUser.authentication;
        final authCredential = GoogleAuthProvider.credential(
          idToken: googleAuth.idToken,
          accessToken: googleAuth.accessToken,
        );
        try {
          await _firebaseAuth.signInWithCredential(authCredential);
        } on FirebaseAuthException catch (e) {
          log(e.toString());
          return const Left(AuthFailure.generalFailure);
        }

        return const Right(null);
      }
    } catch (e) {
      log(e.toString());
      return const Left(AuthFailure.generalFailure);
    }
  }

  @override
  Future<void> signOut() => Future.wait([
        _firebaseAuth.signOut(),
        _googleSignIn.signOut(),
      ]);
}
