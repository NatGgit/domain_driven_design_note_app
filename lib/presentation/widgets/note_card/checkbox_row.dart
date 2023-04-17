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
    checkboxValue = widget.todo.isDone;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 16,
          height: 16,
          margin: const EdgeInsets.fromLTRB(4, 8, 12, 8),
          color: Colors.white,
          child: AppCheckbox(
            checkboxValue: checkboxValue,
            onChanged: (newValue) {
              setState(() {
                checkboxValue = newValue!;
              });
            },
          ),
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
