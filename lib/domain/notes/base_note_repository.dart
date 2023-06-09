import 'package:dartz/dartz.dart';
import 'package:domain_driven_design_note_app/domain/notes/note.dart';
import 'package:domain_driven_design_note_app/domain/notes/note_failures.dart';

abstract class BaseNoteRepository {
  Future<Either<NoteFailure, List<Note>>> getAllNotes();
  Future<Either<NoteFailure, Unit?>> addNote(Note note);
  Future<Either<NoteFailure, Unit?>> updateNote(Note note);
  Future<Either<NoteFailure, Unit?>> deleteNote(Note note);
}
