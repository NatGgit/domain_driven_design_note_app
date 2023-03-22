part of 'notes_bloc.dart';

@freezed
class NotesState with _$NotesState {
  const factory NotesState.initial() = _Initial;
  const factory NotesState.inProgress() = _InProgress;
  const factory NotesState.downloadSuccess(List<Note> notes) = _DownloadSuccess;
  const factory NotesState.deleteSuccess() = _DeleteSuccess;
  const factory NotesState.failure(NoteFailure failure) = _Failed;
}
