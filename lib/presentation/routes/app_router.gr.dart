// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../../domain/notes/note.dart' as _i8;
import '../screens/dashboard.dart' as _i3;
import '../screens/note_form_screen.dart' as _i4;
import '../screens/sign_in_screen.dart' as _i2;
import '../screens/splash_screen.dart' as _i1;
import 'auth_guard.dart' as _i7;

class AppRouter extends _i5.RootStackRouter {
  AppRouter({
    _i6.GlobalKey<_i6.NavigatorState>? navigatorKey,
    required this.authGuard,
  }) : super(navigatorKey);

  final _i7.AuthGuard authGuard;

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashScreen(),
      );
    },
    SignInScreenRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.SignInScreen(),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.Dashboard(),
      );
    },
    NoteFormScreenRoute.name: (routeData) {
      final args = routeData.argsAs<NoteFormScreenRouteArgs>(
          orElse: () => const NoteFormScreenRouteArgs());
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.NoteFormScreen(
          key: args.key,
          noteToEdit: args.noteToEdit,
        ),
        fullscreenDialog: true,
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          SplashScreenRoute.name,
          path: '/',
        ),
        _i5.RouteConfig(
          SignInScreenRoute.name,
          path: '/sign-in-screen',
        ),
        _i5.RouteConfig(
          DashboardRoute.name,
          path: '/Dashboard',
          guards: [authGuard],
        ),
        _i5.RouteConfig(
          NoteFormScreenRoute.name,
          path: '/note-form-screen',
          guards: [authGuard],
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreenRoute extends _i5.PageRouteInfo<void> {
  const SplashScreenRoute()
      : super(
          SplashScreenRoute.name,
          path: '/',
        );

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i2.SignInScreen]
class SignInScreenRoute extends _i5.PageRouteInfo<void> {
  const SignInScreenRoute()
      : super(
          SignInScreenRoute.name,
          path: '/sign-in-screen',
        );

  static const String name = 'SignInScreenRoute';
}

/// generated route for
/// [_i3.Dashboard]
class DashboardRoute extends _i5.PageRouteInfo<void> {
  const DashboardRoute()
      : super(
          DashboardRoute.name,
          path: '/Dashboard',
        );

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i4.NoteFormScreen]
class NoteFormScreenRoute extends _i5.PageRouteInfo<NoteFormScreenRouteArgs> {
  NoteFormScreenRoute({
    _i6.Key? key,
    _i8.Note? noteToEdit,
  }) : super(
          NoteFormScreenRoute.name,
          path: '/note-form-screen',
          args: NoteFormScreenRouteArgs(
            key: key,
            noteToEdit: noteToEdit,
          ),
        );

  static const String name = 'NoteFormScreenRoute';
}

class NoteFormScreenRouteArgs {
  const NoteFormScreenRouteArgs({
    this.key,
    this.noteToEdit,
  });

  final _i6.Key? key;

  final _i8.Note? noteToEdit;

  @override
  String toString() {
    return 'NoteFormScreenRouteArgs{key: $key, noteToEdit: $noteToEdit}';
  }
}
