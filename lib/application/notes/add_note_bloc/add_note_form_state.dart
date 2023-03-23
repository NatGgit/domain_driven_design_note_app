part of 'add_note_form_bloc.dart';

@freezed
class AddNoteFormState with _$AddNoteFormState {
  const factory AddNoteFormState({
    //required Note note,
    required String noteText,
    required Color noteColor,
    required List<Todo> todos,
    required bool isSubmitting,
    required bool showErrorMessages,
    required NoteFailure? noteFailure,
  }) = _AddNoteFormState;

  factory AddNoteFormState.initial() => const AddNoteFormState(
      noteText: '',
      noteColor: Colors.white,
      todos: [],
      isSubmitting: false,
      showErrorMessages: false,
      noteFailure: null);
}
