part of 'sign_in_form_bloc.dart';

@freezed
class SignInFormEvent with _$SignInFormEvent {
  const factory SignInFormEvent.emailChanged(String emailStr) =
      EmailChangedEvent;
  const factory SignInFormEvent.passwordChanged(String password) =
      PasswordChangedEvent;
  const factory SignInFormEvent.registerWithEmail() = RegisterWithEmailEvent;
  const factory SignInFormEvent.signInWithEmail() = SignInWithEmailEvent;
  const factory SignInFormEvent.signInWithGoogle() = SignWithGoogleEvent;
}
