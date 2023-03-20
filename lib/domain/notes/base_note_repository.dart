import 'package:domain_driven_design_note_app/domain/notes/note.dart';

abstract class BaseNoteRepository {
  Stream<List<Note>> getAllNotes();
  Stream<List<Note>> getUncompletedNotes();
  Future<bool> addNote(Note note);
  Future<Note> updateNote(Note note);
  Future<bool> deleteNote(String noteId);
}
