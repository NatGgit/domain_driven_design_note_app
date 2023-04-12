part of 'note_form_cubit.dart';

@freezed
class NoteFormState with _$NoteFormState {
  const factory NoteFormState({
    //required Note note,
    required String noteTitle,
    required String noteText,
    required Color noteColor,
    required List<Todo> todos,
  }) = _AddNoteState;

  factory NoteFormState.initial() => const NoteFormState(
        noteTitle: '',
        noteText: '',
        noteColor: Colors.white,
        todos: [],
        // note: Note(
        //     id: UniqueId(),
        //     text: '',
        //     color: Colors.white,
        //     timestamp: DateTime.now(),
        //     title: '',
        //     todos: []),
      );
}
