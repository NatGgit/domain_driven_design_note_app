import 'package:domain_driven_design_note_app/application/notes/add_note_cubit/note_form_cubit.dart';
import 'package:domain_driven_design_note_app/presentation/core/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormAppBar extends StatelessWidget with PreferredSizeWidget {
  final bool isEdit;
  final void Function() onPressed;
  const FormAppBar({super.key, required this.isEdit, required this.onPressed});

  @override
  Size get preferredSize => const Size(double.infinity, 56);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      foregroundColor: AppColors.appBlue,
      backgroundColor: AppColors.appYellow,
      elevation: 0,
      centerTitle: false,
      leading: IconButton(
          onPressed: () {
            context.read<NoteFormCubit>().clearValues();
            Navigator.pop(context);
          },
          icon: const Icon(Icons.close)),
      title: Text(
        isEdit ? 'Edit the note' : 'Add a note',
        style: Theme.of(context).textTheme.titleLarge,
      ),
      actions: [
        IconButton(
          onPressed: onPressed,
          icon: const Icon(
            Icons.check,
            size: 32,
          ),
        ),
        const SizedBox(
          width: 16,
        )
      ],
    );
  }
}
