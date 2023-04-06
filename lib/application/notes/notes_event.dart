part of 'notes_bloc.dart';

@freezed
class NotesEvent with _$NotesEvent {
  const factory NotesEvent.getAllNotes() = GetAllNotesEvent;
  const factory NotesEvent.getUncompletedNotes() = GetUncompletedNotesEvent;
  const factory NotesEvent.deleteNote(Note note) = DeleteNoteEvent;
}
