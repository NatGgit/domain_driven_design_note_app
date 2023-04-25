import 'package:bloc/bloc.dart';
import 'package:domain_driven_design_note_app/application/notes/add_note_cubit/note_form_cubit.dart';
import 'package:domain_driven_design_note_app/domain/core/unique_id.dart';
import 'package:domain_driven_design_note_app/domain/notes/base_note_repository.dart';
import 'package:domain_driven_design_note_app/domain/notes/note.dart';
import 'package:domain_driven_design_note_app/domain/notes/note_failures.dart';
import 'package:domain_driven_design_note_app/presentation/core/app_constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'notes_bloc.freezed.dart';
part 'notes_event.dart';
part 'notes_state.dart';

@injectable
class NotesBloc extends Bloc<NotesEvent, NotesState> {
  final BaseNoteRepository _baseNoteRepository;

  NotesBloc(this._baseNoteRepository) : super(NotesState.initial()) {
    on<_GetAllNotesEvent>((event, emit) async {
      emit(state.copyWith(isSubmitting: true));
      final result = await _baseNoteRepository.getAllNotes();
      result.fold(
        (failure) =>
            emit(state.copyWith(failure: failure, isSubmitting: false)),
        (notes) => emit(state.copyWith(
          allNotes: notes,
          isSubmitting: false,
          failure: null,
        )),
      );
    });
    on<_DeleteNoteEvent>((event, emit) async {
      emit(state.copyWith(isSubmitting: true));
      final result = await _baseNoteRepository.deleteNote(event.note);
      result.fold(
        (failure) =>
            emit(state.copyWith(failure: failure, isSubmitting: false)),
        (success) {
          final newNotes = List<Note>.from(state.allNotes);
          newNotes.remove(event.note);

          emit(state.copyWith(
            isSubmitting: false,
            failure: null,
            allNotes: newNotes,
          ));
        },
      );
    });
    on<_AddNoteEvent>((event, emit) async {
      emit(state.copyWith(isSubmitting: true));
      final newNote = Note(
        id: UniqueId(),
        title: event.noteFormState.noteTitle,
        text: event.noteFormState.noteText,
        color: event.noteFormState.noteColor ?? AppColors.appLightGrey,
        todos: event.noteFormState.todos,
        timestamp: DateTime.now(),
      );
      final result = await _baseNoteRepository.addNote(newNote);
      result.fold(
        (failure) =>
            emit(state.copyWith(failure: failure, isSubmitting: false)),
        (success) {
          final allNotes = List<Note>.from(state.allNotes);
          allNotes.add(newNote);

          emit(state.copyWith(
            isSubmitting: false,
            failure: null,
            allNotes: allNotes,
          ));
        },
      );
    });
    on<_EditNoteEvent>((event, emit) async {
      emit(state.copyWith(isSubmitting: true));
      final result = await _baseNoteRepository.updateNote(event.note);
      result.fold(
        (failure) =>
            emit(state.copyWith(failure: failure, isSubmitting: false)),
        (success) {
          final allNotes = List<Note>.from(state.allNotes);
          final index = allNotes.indexWhere((note) => note.id == event.note.id);
          allNotes[index] = event.note;

          emit(state.copyWith(
            isSubmitting: false,
            failure: null,
            allNotes: allNotes,
          ));
        },
      );
    });
  }
}
