import 'package:auto_route/auto_route.dart';
import 'package:domain_driven_design_note_app/presentation/screens/dashboard.dart';
import 'package:domain_driven_design_note_app/presentation/screens/sign_in_screen.dart';
import 'package:domain_driven_design_note_app/presentation/screens/splash_screen.dart';

import 'auth_guard.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: SplashScreen, initial: true),
    AutoRoute(page: SignInScreen),
    AutoRoute(page: Dashboard, guards: [AuthGuard]),
  ],
)
class $AppRouter {}
