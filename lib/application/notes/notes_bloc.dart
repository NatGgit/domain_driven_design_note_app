import 'package:bloc/bloc.dart';
import 'package:domain_driven_design_note_app/domain/notes/base_note_repository.dart';
import 'package:domain_driven_design_note_app/domain/notes/note.dart';
import 'package:domain_driven_design_note_app/domain/notes/note_failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'notes_bloc.freezed.dart';
part 'notes_event.dart';
part 'notes_state.dart';

@injectable
class NotesBloc extends Bloc<NotesEvent, NotesState> {
  final BaseNoteRepository _baseNoteRepository;

  NotesBloc(this._baseNoteRepository) : super(const _Initial()) {
    on<GetAllNotesEvent>((event, emit) async {
      emit(const NotesState.inProgress());
      final result = await _baseNoteRepository.getAllNotes();
      result.fold(
        (failure) => emit(NotesState.failure(failure)),
        (notes) => emit(NotesState.downloadSuccess(notes)),
      );
    });
    on<GetUncompletedNotesEvent>((event, emit) async {
      emit(const NotesState.inProgress());
      final result = await _baseNoteRepository.getUncompletedNotes();
      result.fold(
        (failure) => emit(NotesState.failure(failure)),
        (uncompletedNotes) =>
            emit(NotesState.downloadSuccess(uncompletedNotes)),
      );
    });
    on<DeleteNoteEvent>((event, emit) async {
      emit(const NotesState.inProgress());
      final result = await _baseNoteRepository.deleteNote(event.note);
      result.fold(
        (failure) => emit(NotesState.failure(failure)),
        (success) => emit(const NotesState.deleteSuccess()),
      );
    });
  }
}
