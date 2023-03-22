import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:domain_driven_design_note_app/domain/notes/base_note_repository.dart';
import 'package:domain_driven_design_note_app/domain/notes/note.dart';
import 'package:domain_driven_design_note_app/domain/notes/note_failures.dart';
import 'package:domain_driven_design_note_app/infrastructure/core/firestore_helper.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: BaseNoteRepository)
class FirebaseNoteRepository implements BaseNoteRepository {
  final FirebaseFirestore _firestore;

  FirebaseNoteRepository(this._firestore);

  @override
  Future<Either<NoteFailure, List<Note>>> getAllNotes() async {
    final userDoc = _firestore.userDocument();
    if (userDoc != null) {
      try {
        final collectionSnapshot =
            await userDoc.noteCollection.orderBy('timestamp').get();
        return Right(collectionSnapshot.docs
            //.map((doc) => Note.fromJson(doc.data()))
            .map((doc) => doc.data() as Note)
            .toList());
      } catch (e) {
        log(e.toString());
        return const Left(NoteFailure.downloadFailure);
      }
    } else {
      return const Left(NoteFailure.downloadFailure);
    }
  }

  @override
  Future<Either<NoteFailure, List<Note>>> getUncompletedNotes() async {
    final userDoc = _firestore.userDocument();
    if (userDoc != null) {
      try {
        final collectionSnapshot =
            await userDoc.noteCollection.orderBy('timestamp').get();
        return Right(collectionSnapshot.docs
            .map((doc) => doc.data() as Note)
            .where((note) => note.todos.any((todo) => !todo.isDone))
            .toList());
      } catch (e) {
        log(e.toString());
        return const Left(NoteFailure.downloadFailure);
      }
    } else {
      return const Left(NoteFailure.generalFailure);
    }
  }

  @override
  Future<Either<NoteFailure, Unit?>> addNote(Note note) async {
    final userDoc = _firestore.userDocument();
    if (userDoc != null) {
      try {
        await userDoc.noteCollection
            .doc(note.id.value)
            .set(note.toJson())
            .onError(
                (error, stackTrace) => const Left(NoteFailure.noteNotCreated));
        return const Right(null);
      } on FirebaseException catch (e) {
        log(e.toString());
        if (e.message!.contains('PERMISSION DENIED')) {
          return const Left(NoteFailure.insufficientPermissions);
        } else {
          return const Left(NoteFailure.generalFailure);
        }
      }
    } else {
      //TODO should return "unauthenticated"?
      return const Left(NoteFailure.insufficientPermissions);
    }
  }

  @override
  Future<Either<NoteFailure, Unit?>> updateNote(Note note) async {
    final userDoc = _firestore.userDocument();
    if (userDoc != null) {
      try {
        await userDoc.noteCollection
            .doc(note.id.value)
            .update(note.toJson())
            .onError(
                (error, stackTrace) => const Left(NoteFailure.updateFailure));
        return const Right(null);
      } on FirebaseException catch (e) {
        log(e.toString());
        if (e.message!.contains('PERMISSION DENIED')) {
          return const Left(NoteFailure.insufficientPermissions);
        } else if (e.message!.contains('NOT FOUND')) {
          return const Left(NoteFailure.updateFailure);
        } else {
          return const Left(NoteFailure.generalFailure);
        }
      }
    } else {
      //TODO should return "unauthenticated"?
      return const Left(NoteFailure.insufficientPermissions);
    }
  }

  @override
  Future<Either<NoteFailure, Unit?>> deleteNote(Note note) async {
    final userDoc = _firestore.userDocument();
    if (userDoc != null) {
      try {
        await userDoc.noteCollection.doc(note.id.value).delete().onError(
            (error, stackTrace) => const Left(NoteFailure.deleteFailure));
        return const Right(null);
      } on FirebaseException catch (e) {
        log(e.toString());
        if (e.message!.contains('PERMISSION DENIED')) {
          return const Left(NoteFailure.insufficientPermissions);
        } else if (e.message!.contains('NOT FOUND')) {
          return const Left(NoteFailure.deleteFailure);
        } else {
          return const Left(NoteFailure.generalFailure);
        }
      }
    } else {
      //TODO should return "unauthenticated"?
      return const Left(NoteFailure.insufficientPermissions);
    }
  }
}
