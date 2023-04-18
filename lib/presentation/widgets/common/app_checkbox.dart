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
    return Container(
      width: 16,
      height: 16,
      margin: const EdgeInsets.fromLTRB(4, 8, 12, 8),
      color: Colors.white,
      child: Checkbox(
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
      ),
    );
  }
}
