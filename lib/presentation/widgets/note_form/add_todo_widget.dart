import 'package:domain_driven_design_note_app/application/notes/add_note_cubit/note_form_cubit.dart';
import 'package:domain_driven_design_note_app/domain/notes/todo.dart';
import 'package:domain_driven_design_note_app/generated/l10n.dart';
import 'package:domain_driven_design_note_app/presentation/core/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddTodoWidget extends StatelessWidget {
  final bool todoAddingEnabled;

  const AddTodoWidget({
    super.key,
    required this.todoAddingEnabled,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Opacity(
        opacity: todoAddingEnabled ? 1 : 0.5,
        child: ListTile(
          leading: Icon(
            Icons.add,
            color: context.read<NoteFormCubit>().state.makeTextWhite
                ? Colors.white
                : AppColors.appBlue,
          ),
          title: Text(
            S.current.add_todo,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: context.read<NoteFormCubit>().state.makeTextWhite
                    ? Colors.white
                    : AppColors.appBlue),
          ),
          onTap: () {
            if (todoAddingEnabled) {
              context.read<NoteFormCubit>().addTodo(Todo.empty());
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(S.current.todos_limit_reached),
                  backgroundColor: AppColors.appBlue,
                  duration: const Duration(seconds: 3),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
