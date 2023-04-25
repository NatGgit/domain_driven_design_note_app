part of 'note_form_cubit.dart';

@freezed
class NoteFormState with _$NoteFormState {
  const NoteFormState._();

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

  bool get makeTextWhite => noteColor == AppColors.appPurple;
}
