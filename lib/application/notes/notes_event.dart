part of 'notes_bloc.dart';

@freezed
class NotesEvent with _$NotesEvent {
  const factory NotesEvent.getAllNotes() = _GetAllNotesEvent;
  const factory NotesEvent.deleteNote(Note note) = _DeleteNoteEvent;
  const factory NotesEvent.addNote(NoteFormState noteFormState) = _AddNoteEvent;
  const factory NotesEvent.editNote(Note note) = _EditNoteEvent;
}
