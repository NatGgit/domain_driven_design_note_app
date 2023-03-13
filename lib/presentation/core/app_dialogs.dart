import 'package:domain_driven_design_note_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class AppDialogs {
  static showErrorDialog(
      {required BuildContext context, required String message}) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Assets.images.warning.image(height: 50),
              const SizedBox(
                height: 16,
              ),
              Text(message),
            ],
          ),
        ),
      ),
    );
  }
}
