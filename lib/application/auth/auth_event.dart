part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authCheckRequest() = _AuthCheckRequest;
  const factory AuthEvent.signOut() = _SignOutEvent;
  const factory AuthEvent.registerWithEmail(
      {required SignInFormState signInFormState}) = _RegisterWithEmailEvent;
  const factory AuthEvent.signInWithEmail(
      {required SignInFormState signInFormState}) = _SignInWithEmailEvent;
  const factory AuthEvent.signInWithGoogle() = _SignWithGoogleEvent;
}
