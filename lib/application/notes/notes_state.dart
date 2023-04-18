part of 'notes_bloc.dart';

@freezed
class NotesState with _$NotesState {
  const factory NotesState(
      {required List<Note> allNotes,
      required bool isSubmitting,
      required NoteFailure? failure}) = _NotesState;
  factory NotesState.initial() => const NotesState(
        allNotes: [],
        isSubmitting: false,
        failure: null,
      );
}
