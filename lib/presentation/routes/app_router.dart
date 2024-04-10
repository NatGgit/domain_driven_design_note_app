import 'package:auto_route/auto_route.dart';
import 'package:domain_driven_design_note_app/domain/notes/note.dart';
import 'package:domain_driven_design_note_app/presentation/screens/dashboard.dart';
import 'package:domain_driven_design_note_app/presentation/screens/note_form_screen.dart';
import 'package:domain_driven_design_note_app/presentation/screens/sign_in_screen.dart';
import 'package:domain_driven_design_note_app/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart';

import 'auth_guard.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: SignInRoute.page),
        AutoRoute(page: DashboardRoute.page, guards: [AuthGuard()]),
        AutoRoute(
          page: NoteFormRoute.page,
          guards: [AuthGuard()],
          fullscreenDialog: true,
        ),
      ];
}
