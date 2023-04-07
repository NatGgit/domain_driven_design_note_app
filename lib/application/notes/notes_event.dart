part of 'notes_bloc.dart';

@freezed
class NotesEvent with _$NotesEvent {
  const factory NotesEvent.getAllNotes() = _GetAllNotesEvent;
  const factory NotesEvent.getUncompletedNotes() = _GetUncompletedNotesEvent;
  const factory NotesEvent.deleteNote(Note note) = _DeleteNoteEvent;
  const factory NotesEvent.addNote(Note note) = _AddNoteEvent;
}
