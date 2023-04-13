import 'package:bloc/bloc.dart';
import 'package:domain_driven_design_note_app/application/notes/add_note_cubit/note_form_cubit.dart';
import 'package:domain_driven_design_note_app/domain/core/unique_id.dart';
import 'package:domain_driven_design_note_app/domain/notes/base_note_repository.dart';
import 'package:domain_driven_design_note_app/domain/notes/note.dart';
import 'package:domain_driven_design_note_app/domain/notes/note_failures.dart';
import 'package:flutter/material.dart';
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
            uncompletedNotes: notes.where((note) {
              return note.todos.any((todo) => !todo.isDone);
            }).toList())),
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
          final uncompletedNotes = List<Note>.from(state.uncompletedNotes);
          uncompletedNotes.remove(event.note);

          emit(state.copyWith(
            isSubmitting: false,
            failure: null,
            allNotes: newNotes,
            uncompletedNotes: uncompletedNotes,
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
        color: event.noteFormState.noteColor ?? Colors.white,
        todos: event.noteFormState.todos ?? [],
        timestamp: DateTime.now(),
      );
      final result = await _baseNoteRepository.addNote(newNote);
      result.fold(
        (failure) =>
            emit(state.copyWith(failure: failure, isSubmitting: false)),
        (success) {
          final allNotes = List<Note>.from(state.allNotes);
          final uncompletedNotes = List<Note>.from(state.uncompletedNotes);

          allNotes.add(newNote);
          if (newNote.todos.any((todo) => !todo.isDone)) {
            uncompletedNotes.add(newNote);
          }
          emit(state.copyWith(
            isSubmitting: false,
            failure: null,
            allNotes: allNotes,
            uncompletedNotes: uncompletedNotes,
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
          final uncompletedNotes = List<Note>.from(state.uncompletedNotes);

          final index = allNotes.indexWhere((note) => note.id == event.note.id);
          allNotes[index] = event.note;
          if (event.note.todos.any((todo) => !todo.isDone)) {
            final index =
                uncompletedNotes.indexWhere((note) => note.id == event.note.id);
            if (index == -1) {
              uncompletedNotes.add(event.note);
            }
            uncompletedNotes[index] = event.note;
          }
          emit(state.copyWith(
            isSubmitting: false,
            failure: null,
            allNotes: allNotes,
            uncompletedNotes: uncompletedNotes,
          ));
        },
      );
    });
  }
}
