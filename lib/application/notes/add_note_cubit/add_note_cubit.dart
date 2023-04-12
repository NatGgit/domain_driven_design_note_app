import 'package:bloc/bloc.dart';
import 'package:domain_driven_design_note_app/domain/notes/base_note_repository.dart';
import 'package:domain_driven_design_note_app/domain/notes/note.dart';
import 'package:domain_driven_design_note_app/domain/notes/note_failures.dart';
import 'package:domain_driven_design_note_app/domain/notes/todo.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'add_note_cubit.freezed.dart';
part 'add_note_state.dart';

@injectable
class AddNoteCubit extends Cubit<AddNoteState> {
  final BaseNoteRepository _noteRepository;
  AddNoteCubit(this._noteRepository) : super(AddNoteState.initial());

  Future<void> changeText(String noteText) async {
    emit(state.copyWith(
      noteText: noteText,
      noteFailure: null,
    ));
  }

  Future<void> changeColor(Color newColor) async {
    emit(state.copyWith(
      noteColor: newColor,
      noteFailure: null,
    ));
  }

  Future<void> addTodo(Todo newTodo) async {
    state.todos.add(newTodo);
    final updatedTodos = state.todos;

    emit(state.copyWith(
      todos: updatedTodos,
      noteFailure: null,
    ));
  }

  Future<void> saveNote(Note note) async {
    emit(state.copyWith(
      isSubmitting: true,
      noteFailure: null,
    ));
    final response = await _noteRepository.addNote(note);
    response.fold(
      (failure) =>
          emit(state.copyWith(noteFailure: failure, isSubmitting: false)),
      (success) => emit(state.copyWith(noteFailure: null, isSubmitting: false)),
    );
  }

  Future<void> updateNote(Note note) async {
    emit(state.copyWith(
      isSubmitting: true,
      noteFailure: null,
    ));
    final response = await _noteRepository.updateNote(note);
    response.fold(
      (failure) =>
          emit(state.copyWith(noteFailure: failure, isSubmitting: false)),
      (success) => emit(state.copyWith(noteFailure: null, isSubmitting: false)),
    );
  }
}
