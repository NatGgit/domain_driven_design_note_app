import 'package:domain_driven_design_note_app/application/notes/add_note_cubit/note_form_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NoteTextFieldWidget extends StatelessWidget {
  const NoteTextFieldWidget({
    super.key,
    required this.textController,
  });

  final TextEditingController textController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textController,
      maxLines: 5,
      maxLength: 1000,
      style: Theme.of(context).textTheme.bodySmall,
      decoration: InputDecoration(
        alignLabelWithHint: true,
        labelText: 'note text',
        labelStyle: Theme.of(context).textTheme.bodySmall,
        counterStyle: Theme.of(context).textTheme.titleMedium,
      ),
      onChanged: (value) {
        context.read<NoteFormCubit>().changeText(value);
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter note text';
        }
        return null;
      },
    );
  }
}
