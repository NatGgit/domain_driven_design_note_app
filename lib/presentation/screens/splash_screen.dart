import 'package:auto_route/auto_route.dart';
import 'package:domain_driven_design_note_app/application/auth/auth_bloc.dart';
import 'package:domain_driven_design_note_app/presentation/routes/app_router.dart';
import 'package:domain_driven_design_note_app/presentation/widgets/common/app_circular_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.isAuthenticated) {
          AutoRouter.of(context).replace(const DashboardRoute());
        } else {
          AutoRouter.of(context).replace(const SignInRoute());
        }
      },
      child: const Scaffold(
        backgroundColor: Colors.white,
        body: AppCircularProgressIndicator(),
      ),
    );
  }
}
