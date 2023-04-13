import 'package:auto_route/auto_route.dart';
import 'package:domain_driven_design_note_app/application/notes/notes_bloc.dart';
import 'package:domain_driven_design_note_app/domain/notes/note.dart';
import 'package:domain_driven_design_note_app/presentation/core/app_constants.dart';
import 'package:domain_driven_design_note_app/presentation/core/app_dialogs.dart';
import 'package:domain_driven_design_note_app/presentation/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'checkbox_row.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({
    super.key,
    required this.note,
  });

  final Note note;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: note.color == AppColors.paperGrey || note.color == Colors.white
            ? Border.all()
            : null,
        borderRadius: const BorderRadius.all(
          Radius.circular(24),
        ),
        color: note.color,
      ),
      clipBehavior: Clip.hardEdge,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: AppColors.appBlue,
          onTap: () {
            AutoRouter.of(context).push(NoteFormScreenRoute(noteToEdit: note));
          },
          onLongPress: () {
            AppDialogs.showRegularDialog(
                context: context,
                message: 'Are you sure you want to delete this note?',
                actionText: 'delete',
                callback: () {
                  context.read<NotesBloc>().add(NotesEvent.deleteNote(note));
                });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12.0,
              vertical: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (note.title != null && note.title!.isNotEmpty) ...[
                  Text(
                    note.title!,
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: note.color == AppColors.appPurple
                            ? Colors.white
                            : null),
                  ),
                  const SizedBox(
                    height: 8,
                  )
                ],
                Text(
                  note.text,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: note.color == AppColors.appPurple
                          ? Colors.white
                          : null),
                ),
                if (note.todos.isNotEmpty) ...[
                  ListView.builder(
                      padding: const EdgeInsets.only(top: 4),
                      shrinkWrap: true,
                      itemCount: note.todos.length,
                      itemBuilder: (context, index) {
                        return CheckboxRow(todo: note.todos[index]);
                      })
                ]
              ],
            ),
          ),
        ),
      ),
    );
  }
}
