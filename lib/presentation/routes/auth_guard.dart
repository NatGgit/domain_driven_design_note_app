import 'package:auto_route/auto_route.dart';
import 'package:domain_driven_design_note_app/application/auth/auth_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app_router.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final context = router.navigatorKey.currentContext;
    if (context!.read<AuthBloc>().state.isAuthenticated) {
      // if user is authenticated we continue
      resolver.next(true);
    } else {
      resolver.redirect(const SignInRoute());
    }
  }
}
