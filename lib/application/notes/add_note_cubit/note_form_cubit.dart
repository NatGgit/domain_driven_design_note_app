import 'package:bloc/bloc.dart';
import 'package:domain_driven_design_note_app/domain/core/unique_id.dart';
import 'package:domain_driven_design_note_app/domain/notes/todo.dart';
import 'package:domain_driven_design_note_app/presentation/core/app_constants.dart';
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

  Future<void> setTodos(List<Todo> todos) async {
    emit(state.copyWith(
      todos: todos,
    ));
  }

  Future<void> changeTodo(UniqueId id, {bool? isDone, String? newTitle}) async {
    emit(state.copyWith(
        todos: state.todos.map((todo) {
      if (todo.id == id) {
        return todo.copyWith(
            isDone: isDone ?? todo.isDone, text: newTitle ?? todo.text);
      } else {
        return todo;
      }
    }).toList()));
  }

  Future<void> deleteTodo(Todo todo) async {
    final List<Todo> newTodos = List.from(state.todos);
    newTodos.remove(todo);

    emit(state.copyWith(
      todos: newTodos,
    ));
  }

  Future<void> clear() async {
    emit(NoteFormState.initial());
  }
}
