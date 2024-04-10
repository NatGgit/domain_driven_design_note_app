import 'package:domain_driven_design_note_app/application/notes/add_note_cubit/note_form_cubit.dart';
import 'package:domain_driven_design_note_app/generated/l10n.dart';
import 'package:domain_driven_design_note_app/presentation/core/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormAppBar extends StatelessWidget {
  final bool isEdit;
  final void Function() onPressed;
  const FormAppBar({
    super.key,
    required this.isEdit,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      foregroundColor: context.read<NoteFormCubit>().state.makeTextWhite
          ? Colors.white
          : AppColors.appBlue,
      backgroundColor:
          context.read<NoteFormCubit>().state.noteColor ?? AppColors.appYellow,
      elevation: 0,
      centerTitle: false,
      leading: IconButton(
        onPressed: () {
          context.read<NoteFormCubit>().clear();
          Navigator.pop(context);
        },
        icon: const Icon(Icons.close),
      ),
      title: Text(
        isEdit ? S.current.edit_note : S.current.add_note,
        style: Theme.of(context).textTheme.titleLarge!.copyWith(
            color: context.read<NoteFormCubit>().state.makeTextWhite
                ? Colors.white
                : AppColors.appBlue),
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
