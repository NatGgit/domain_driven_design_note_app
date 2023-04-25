import 'package:domain_driven_design_note_app/application/notes/add_note_cubit/note_form_cubit.dart';
import 'package:domain_driven_design_note_app/domain/notes/todo.dart';
import 'package:domain_driven_design_note_app/presentation/widgets/note_form/todo_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:implicitly_animated_reorderable_list_2/implicitly_animated_reorderable_list_2.dart';

class TodoList extends StatelessWidget {
  final List<Todo> todos;
  const TodoList({
    Key? key,
    required this.todos,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImplicitlyAnimatedReorderableList<Todo>(
      items: todos,
      removeDuration: Duration.zero,
      areItemsTheSame: (oldItem, newItem) => oldItem.id == newItem.id,
      onReorderFinished: (item, from, to, newItems) {
        context.read<NoteFormCubit>().setTodos(newItems);
      },
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.only(top: 16, bottom: 0),
      itemBuilder: (context, animation, todo, index) {
        return Reorderable(
          key: ValueKey(todo.id),
          builder: (context, dragAnimation, inDrag) {
            return TodoTile(
              inDrag: inDrag,
              index: index,
              todo: todo,
            );
          },
        );
      },
    );
  }
}
