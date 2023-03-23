part of 'add_note_form_bloc.dart';

@freezed
class AddNoteFormEvent with _$AddNoteFormEvent {
  const factory AddNoteFormEvent.changeText(String noteText) = TextChanged;
  const factory AddNoteFormEvent.changeColor(Color newColor) = ColorChanged;
  const factory AddNoteFormEvent.addTodo(Todo todo) = TodoAdded;
  const factory AddNoteFormEvent.changeTodo(Todo todo, int index) = TodoChanged;
  const factory AddNoteFormEvent.save(Note note) = NoteSaved;
  const factory AddNoteFormEvent.update(Note note) = NoteUpdated;
}
