import 'package:bloc/bloc.dart';
import 'package:domain_driven_design_note_app/domain/notes/todo.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_form_cubit.freezed.dart';
part 'note_form_state.dart';

class NoteFormCubit extends Cubit<NoteFormState> {
  NoteFormCubit() : super(NoteFormState.initial());

  Future<void> changeTitle(String? noteTitle) async {
    emit(state.copyWith(
      noteTitle: noteTitle,
    ));
  }

  Future<void> changeText(String noteText) async {
    emit(state.copyWith(
      noteText: noteText,
    ));
  }

  Future<void> changeColor(Color newColor) async {
    emit(state.copyWith(
      noteColor: newColor,
    ));
  }

  Future<void> addTodo(Todo newTodo) async {
    final List<Todo> newTodos = List.from(state.todos);
    newTodos.add(newTodo);

    emit(state.copyWith(
      todos: newTodos,
    ));
  }

  Future<void> addAllTodos(List<Todo> todos) async {
    final List<Todo> newTodos = List.from(state.todos);
    newTodos.addAll(todos);

    emit(state.copyWith(
      todos: newTodos,
    ));
  }

  Future<void> changeTodo(int index, bool newValue) async {
    final changedTodo = state.todos.elementAt(index).copyWith(isDone: newValue);
    final List<Todo> newTodos = List.from(state.todos);
    newTodos[index] = changedTodo;

    emit(state.copyWith(
      todos: newTodos,
    ));
  }

  Future<void> clearValues() async {
    emit(NoteFormState.initial());
  }
}
