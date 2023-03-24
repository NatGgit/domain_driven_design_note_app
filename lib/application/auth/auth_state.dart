part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required bool isAuthenticated,
    required bool isSubmitting,
    required AuthFailure? authFailure,
  }) = _AuthState;
  factory AuthState.initial() => const AuthState(
      authFailure: null, isAuthenticated: false, isSubmitting: false);
}
