part of 'note_form_cubit.dart';

@freezed
class NoteFormState with _$NoteFormState {
  const factory NoteFormState({
    //required Note note,
    String? noteTitle,
    required String noteText,
    Color? noteColor,
    List<Todo>? todos,
  }) = _AddNoteState;

  factory NoteFormState.initial() => const NoteFormState(
        noteText: '',
      );
}
