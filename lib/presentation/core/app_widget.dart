import 'package:domain_driven_design_note_app/application/auth/auth_bloc.dart';
import 'package:domain_driven_design_note_app/application/notes/add_note_cubit/note_form_cubit.dart';
import 'package:domain_driven_design_note_app/application/notes/notes_bloc.dart';
import 'package:domain_driven_design_note_app/generated/l10n.dart';
import 'package:domain_driven_design_note_app/injection.dart';
import 'package:domain_driven_design_note_app/presentation/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'app_constants.dart';

class AppWidget extends StatelessWidget {
  AppWidget({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
            create: (context) => getIt<AuthBloc>()
              ..add(
                const AuthEvent.authCheckRequest(),
              )),
        BlocProvider<NotesBloc>(create: (context) => getIt<NotesBloc>()),
        BlocProvider<NoteFormCubit>(create: (context) => NoteFormCubit()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          S.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en', ''),
          Locale('pl', ''),
        ],
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        theme: AppThemes.appTheme,
      ),
    );
  }
}
