import 'package:domain_driven_design_note_app/domain/notes/todo.dart';
import 'package:domain_driven_design_note_app/presentation/widgets/common/app_checkbox.dart';
import 'package:flutter/material.dart';

class CheckboxRow extends StatelessWidget {
  final Todo todo;
  final bool makeTextWhite;
  final void Function(bool?) onChanged;

  const CheckboxRow({
    super.key,
    required this.todo,
    this.makeTextWhite = false,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        AppCheckbox(
          checkboxValue: todo.isDone,
          onChanged: (newValue) {
            onChanged(newValue);
          },
        ),
        ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: (MediaQuery.of(context).size.width / 3 - 16),
          ),
          child: Text(
            todo.text,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: makeTextWhite ? Colors.white : null),
          ),
        ),
      ],
    );
  }
}
