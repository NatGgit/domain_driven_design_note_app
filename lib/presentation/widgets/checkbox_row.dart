import 'package:domain_driven_design_note_app/domain/notes/todo.dart';
import 'package:domain_driven_design_note_app/presentation/core/app_constants.dart';
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
          child: Checkbox(
            value: checkboxValue,
            onChanged: (newValue) {
              setState(() {
                checkboxValue = newValue!;
              });
            },
            visualDensity: VisualDensity.compact,
            activeColor: AppColors.appBlue,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(4),
              ),
            ),
            side: const BorderSide(),
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
