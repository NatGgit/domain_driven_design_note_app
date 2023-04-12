part of 'add_note_cubit.dart';

@freezed
class AddNoteState with _$AddNoteState {
  const factory AddNoteState({
    //required Note note,
    required String noteText,
    required Color noteColor,
    required List<Todo> todos,
    required bool isSubmitting,
    required bool showErrorMessages,
    required NoteFailure? noteFailure,
  }) = _AddNoteState;

  factory AddNoteState.initial() => const AddNoteState(
      noteText: '',
      noteColor: Colors.white,
      todos: [],
      isSubmitting: false,
      showErrorMessages: false,
      noteFailure: null);
}
