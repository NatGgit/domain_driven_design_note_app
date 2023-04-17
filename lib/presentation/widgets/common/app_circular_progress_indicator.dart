import 'package:domain_driven_design_note_app/presentation/core/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class AppCircularProgressIndicator extends StatelessWidget {
  const AppCircularProgressIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SpinKitDoubleBounce(
        color: AppColors.appBlue,
        size: 100,
        duration: Duration(milliseconds: 2000),
      ),
    );
  }
}
