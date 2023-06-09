import 'package:dartz/dartz.dart';
import 'package:domain_driven_design_note_app/domain/auth/auth_failures.dart';
import 'package:domain_driven_design_note_app/domain/user/user.dart';

abstract class BaseAuthRepository {
  UserEntity? getSignedInUser();
  Future<Either<AuthFailure, Unit?>> registerWithEmailAndPassword(
      {required String email, required String password});

  Future<Either<AuthFailure, Unit?>> signInWithEmailAndPassword(
      {required String email, required String password});

  Future<Either<AuthFailure, Unit?>> signInWithGoogle();
  Future<void> signOut();
}
