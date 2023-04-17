import 'package:domain_driven_design_note_app/presentation/core/app_constants.dart';
import 'package:flutter/material.dart';

class AppCheckbox extends StatelessWidget {
  final bool checkboxValue;
  final void Function(bool?) onChanged;

  const AppCheckbox({
    super.key,
    required this.checkboxValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkboxValue,
      onChanged: onChanged,
      visualDensity: VisualDensity.compact,
      activeColor: AppColors.appBlue,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(4),
        ),
      ),
      side: const BorderSide(),
    );
  }
}
