import 'package:domain_driven_design_note_app/application/notes/add_note_cubit/note_form_cubit.dart';
import 'package:domain_driven_design_note_app/domain/notes/todo.dart';
import 'package:domain_driven_design_note_app/generated/l10n.dart';
import 'package:domain_driven_design_note_app/presentation/core/app_constants.dart';
import 'package:domain_driven_design_note_app/presentation/widgets/common/app_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:implicitly_animated_reorderable_list_2/implicitly_animated_reorderable_list_2.dart';

class TodoTile extends StatelessWidget {
  final int index;
  final Todo todo;
  final bool inDrag;

  const TodoTile({
    super.key,
    required this.index,
    required this.todo,
    required this.inDrag,
  });

  @override
  Widget build(BuildContext context) {
    return Slidable(
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
        child: Material(
          borderRadius: BorderRadius.circular(12),
          color: context.read<NoteFormCubit>().state.noteColor ??
              AppColors.appYellow,
          elevation: inDrag ? 3 : 1,
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
                        .changeTodo(todo.id, isDone: newValue);
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
                    hintStyle: Theme.of(context).textTheme.labelSmall!.copyWith(
                        color: context.read<NoteFormCubit>().state.makeTextWhite
                            ? Colors.white
                            : AppColors.appBlue),
                  ),
                ),
                child: Expanded(
                  child: TextFormField(
                    initialValue: todo.text,
                    autocorrect: false,
                    maxLength: 30,
                    decoration: InputDecoration(
                      hintText: S.current.what_to_do,
                      counterText: '',
                      contentPadding: const EdgeInsets.only(top: 0, bottom: 0),
                    ),
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: context.read<NoteFormCubit>().state.makeTextWhite
                            ? Colors.white
                            : AppColors.appBlue),
                    onChanged: (value) {
                      context
                          .read<NoteFormCubit>()
                          .changeTodo(todo.id, newTitle: value);
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return S.current.todo_name_cannot_be_empty;
                      }
                      return null;
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                  ),
                ),
              ),
              const Handle(
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Icon(Icons.drag_handle),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
