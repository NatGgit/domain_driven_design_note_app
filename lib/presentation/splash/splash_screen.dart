import 'package:auto_route/auto_route.dart';
import 'package:domain_driven_design_note_app/application/auth/auth_bloc.dart';
import 'package:domain_driven_design_note_app/presentation/core/app_constants.dart';
import 'package:domain_driven_design_note_app/presentation/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) {
            // print('Authenticated!');
          },
          unauthenticated: (_) =>
              AutoRouter.of(context).replace(const SignInScreenRoute()),
        );
      },
      child: const Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: SpinKitDoubleBounce(
            color: AppColors.appBlue,
            size: 100,
            duration: Duration(milliseconds: 2000),
          ),
        ),
      ),
    );
  }
}
