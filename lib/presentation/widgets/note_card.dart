import 'package:domain_driven_design_note_app/application/notes/notes_bloc.dart';
import 'package:domain_driven_design_note_app/domain/notes/note.dart';
import 'package:domain_driven_design_note_app/presentation/core/app_dialogs.dart';
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
    return InkWell(
      onTap: () {
        //TODO open note form
      },
      onLongPress: () {
        AppDialogs.showRegularDialog(
            context: context,
            message: 'Are you sure you want to delete this note?',
            actionText: 'delete',
            callback: () {
              context.read<NotesBloc>().add(NotesEvent.deleteNote(note));
              // context.read<NotesBloc>().add(const NotesEvent.getAllNotes());
            });
      },
      child: Container(
        decoration: BoxDecoration(
          border: note.color == Colors.white ? Border.all() : null,
          borderRadius: const BorderRadius.all(
            Radius.circular(24),
          ),
          color: note.color,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12.0,
            vertical: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (note.title != null) ...[
                Text(
                  note.title!,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(
                  height: 8,
                )
              ],
              Text(
                note.text,
                style: Theme.of(context).textTheme.bodyMedium,
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
    );
  }
}
