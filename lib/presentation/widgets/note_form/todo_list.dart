import 'package:domain_driven_design_note_app/application/notes/add_note_cubit/note_form_cubit.dart';
import 'package:domain_driven_design_note_app/domain/notes/todo.dart';
import 'package:domain_driven_design_note_app/presentation/widgets/common/app_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoList extends StatelessWidget {
  final List<Todo> todos;
  const TodoList({
    Key? key,
    required this.todos,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.only(top: 16, bottom: 0),
      itemCount: todos.length,
      itemBuilder: (context, index) {
        final todo = todos[index];
        return Slidable(
          //this is because otherwise UI was always showing that the last item
          //on the list was deleted, no matter that state was updating correctly
          key: ValueKey(todo),
          endActionPane: ActionPane(
            motion: const DrawerMotion(),
            extentRatio: 0.15,
            children: [
              SlidableAction(
                onPressed: (context) {
                  context.read<NoteFormCubit>().deleteTodo(todo);
                },
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                icon: Icons.delete,
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8, left: 8),
                  child: AppCheckbox(
                    checkboxValue: todo.isDone,
                    onChanged: (newValue) {
                      context
                          .read<NoteFormCubit>()
                          .changeTodo(index, isDone: newValue);
                    },
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Theme(
                  data: ThemeData(
                    inputDecorationTheme: InputDecorationTheme(
                      border: InputBorder.none,
                      hintStyle: Theme.of(context).textTheme.labelSmall,
                    ),
                  ),
                  child: Expanded(
                    child: TextFormField(
                      autocorrect: false,
                      initialValue: todo.text,
                      maxLength: 30,
                      decoration: const InputDecoration(
                          hintText: 'What do you want to do?', counterText: ''),
                      style: Theme.of(context).textTheme.bodySmall,
                      onChanged: (value) {
                        context
                            .read<NoteFormCubit>()
                            .changeTodo(index, newTitle: value);
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'todo name cannot be empty';
                        }
                        return null;
                      },
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
