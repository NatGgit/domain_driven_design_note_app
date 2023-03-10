import 'package:domain_driven_design_note_app/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:domain_driven_design_note_app/injection.dart';
import 'package:domain_driven_design_note_app/presentation/sign_in/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app_constants.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SignInFormBloc>(
          create: (context) => getIt<SignInFormBloc>(),
        )
      ],
      child: MaterialApp(
        title: 'Note App',
        theme: AppThemes.appTheme,
        home: const SignInScreen(),
      ),
    );
  }
}
