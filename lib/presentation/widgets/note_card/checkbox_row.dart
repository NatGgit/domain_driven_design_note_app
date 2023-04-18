import 'package:domain_driven_design_note_app/domain/notes/todo.dart';
import 'package:domain_driven_design_note_app/presentation/widgets/common/app_checkbox.dart';
import 'package:flutter/material.dart';

class CheckboxRow extends StatefulWidget {
  final Todo todo;
  const CheckboxRow({super.key, required this.todo});

  @override
  State<CheckboxRow> createState() => _CheckboxRowState();
}

class _CheckboxRowState extends State<CheckboxRow> {
  late bool checkboxValue;
  @override
  void initState() {
    super.initState();
    checkboxValue = widget.todo.isDone;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppCheckbox(
          checkboxValue: checkboxValue,
          onChanged: (newValue) {
            setState(() {
              checkboxValue = newValue!;
            });
          },
        ),
        Expanded(
          child: Text(
            widget.todo.text,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      ],
    );
  }
}
