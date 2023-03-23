import 'package:bloc/bloc.dart';
import 'package:domain_driven_design_note_app/domain/notes/base_note_repository.dart';
import 'package:domain_driven_design_note_app/domain/notes/note.dart';
import 'package:domain_driven_design_note_app/domain/notes/note_failures.dart';
import 'package:domain_driven_design_note_app/domain/notes/todo.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'add_note_form_bloc.freezed.dart';
part 'add_note_form_event.dart';
part 'add_note_form_state.dart';

@injectable
class AddNoteFormBloc extends Bloc<AddNoteFormEvent, AddNoteFormState> {
  final BaseNoteRepository _noteRepository;
  AddNoteFormBloc(this._noteRepository) : super(AddNoteFormState.initial()) {
    on<TextChanged>((event, emit) {
      emit(state.copyWith(
        noteText: event.noteText,
        noteFailure: null,
      ));
    });
    on<ColorChanged>((event, emit) {
      emit(
        state.copyWith(
          noteColor: event.newColor,
          noteFailure: null,
        ),
      );
    });
    on<TodoAdded>((event, emit) {
      state.todos.add(event.todo);
      final updatedTodos = state.todos;

      emit(state.copyWith(
        todos: updatedTodos,
        noteFailure: null,
      ));
    });
    on<TodoChanged>((event, emit) {
      state.todos[event.index] = event.todo;
      final updatedTodos = state.todos;
      emit(state.copyWith(
        todos: updatedTodos,
        noteFailure: null,
      ));
    });
    on<NoteSaved>((event, emit) async {
      emit(state.copyWith(
        isSubmitting: true,
        noteFailure: null,
      ));
      final response = await _noteRepository.addNote(event.note);
      response.fold(
        (failure) =>
            emit(state.copyWith(noteFailure: failure, isSubmitting: false)),
        (success) =>
            emit(state.copyWith(noteFailure: null, isSubmitting: false)),
      );
    });
    on<NoteUpdated>((event, emit) async {
      emit(state.copyWith(
        isSubmitting: true,
        noteFailure: null,
      ));
      final response = await _noteRepository.updateNote(event.note);
      response.fold(
        (failure) =>
            emit(state.copyWith(noteFailure: failure, isSubmitting: false)),
        (success) =>
            emit(state.copyWith(noteFailure: null, isSubmitting: false)),
      );
    });
  }
}
