part of 'notes_bloc.dart';

@freezed
class NotesEvent with _$NotesEvent {
  const factory NotesEvent.getAllNotes() = GetAll;
  const factory NotesEvent.getUncompletedNotes() = GetUncompleted;
  const factory NotesEvent.deleteNote(Note note) = DeleteNote;
}
