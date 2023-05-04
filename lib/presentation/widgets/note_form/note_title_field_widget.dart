import 'package:domain_driven_design_note_app/application/notes/add_note_cubit/note_form_cubit.dart';
import 'package:domain_driven_design_note_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NoteTitleFieldWidget extends StatelessWidget {
  const NoteTitleFieldWidget({
    super.key,
    required this.titleController,
  });

  final TextEditingController titleController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: titleController,
      maxLength: 60,
      style: Theme.of(context).textTheme.bodySmall,
      decoration: InputDecoration(
        labelText: S.current.title,
        labelStyle: Theme.of(context).textTheme.bodySmall,
        counterStyle: Theme.of(context).textTheme.titleMedium,
        filled: true,
        fillColor: Colors.white,
      ),
      onChanged: (value) {
        context.read<NoteFormCubit>().changeTitle(value);
      },
    );
  }
}
