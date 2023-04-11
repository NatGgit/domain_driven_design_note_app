import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:domain_driven_design_note_app/domain/core/unique_id.dart';
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
        final notes = collectionSnapshot.docs.map((doc) {
          return Note.fromJson(doc.data() as Map<String, dynamic>)
              .copyWith(id: UniqueId.fromUniqueString(doc.id));
        }).toList();
        return Right(notes);
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
        await userDoc.noteCollection.doc(note.id.value).set(note.toJson());
        return const Right(null);
      } catch (e) {
        log(e.toString());
        if (e is FirebaseException &&
            e.message!.contains('PERMISSION DENIED')) {
          return const Left(NoteFailure.insufficientPermissions);
        } else {
          return const Left(NoteFailure.noteNotCreated);
        }
      }
    } else {
      return const Left(NoteFailure.generalFailure);
    }
  }

  @override
  Future<Either<NoteFailure, Unit?>> updateNote(Note note) async {
    final userDoc = _firestore.userDocument();
    if (userDoc != null) {
      try {
        await userDoc.noteCollection.doc(note.id.value).update(note.toJson());
        return const Right(null);
      } catch (e) {
        log(e.toString());
        if (e is FirebaseException &&
            e.message!.contains('PERMISSION DENIED')) {
          return const Left(NoteFailure.insufficientPermissions);
        } else if (e is FirebaseException && e.message!.contains('NOT FOUND')) {
          return const Left(NoteFailure.updateFailure);
        } else {
          return const Left(NoteFailure.generalFailure);
        }
      }
    } else {
      return const Left(NoteFailure.generalFailure);
    }
  }

  @override
  Future<Either<NoteFailure, Unit?>> deleteNote(Note note) async {
    final userDoc = _firestore.userDocument();
    if (userDoc != null) {
      try {
        await userDoc.noteCollection.doc(note.id.value).delete();
        return const Right(null);
      } catch (e) {
        log(e.toString());
        if (e is FirebaseException &&
            e.message!.contains('PERMISSION DENIED')) {
          return const Left(NoteFailure.insufficientPermissions);
        } else if (e is FirebaseException && e.message!.contains('NOT FOUND')) {
          return const Left(NoteFailure.deleteFailure);
        } else {
          return const Left(NoteFailure.generalFailure);
        }
      }
    } else {
      return const Left(NoteFailure.generalFailure);
    }
  }
}
