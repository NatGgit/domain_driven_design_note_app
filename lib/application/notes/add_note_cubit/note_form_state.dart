part of 'note_form_cubit.dart';

@freezed
class NoteFormState with _$NoteFormState {
  const factory NoteFormState({
    String? noteTitle,
    required String noteText,
    Color? noteColor,
    required List<Todo> todos,
  }) = _AddNoteState;

  factory NoteFormState.initial() => const NoteFormState(
        noteText: '',
        todos: [],
      );
}
