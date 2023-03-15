import 'package:auto_route/auto_route.dart';
import 'package:domain_driven_design_note_app/presentation/sign_in/sign_in_screen.dart';
import 'package:domain_driven_design_note_app/presentation/splash/splash_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: SplashScreen, initial: true),
    AutoRoute(page: SignInScreen),
  ],
)
class $AppRouter {}
