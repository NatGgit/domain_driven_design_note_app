part of 'sign_in_form_bloc.dart';

@freezed
class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    required String email,
    required String password,
    required bool isSubmitting,
    required AuthFailure? authFailure,
  }) = _SignInFormState;

  factory SignInFormState.initial() => const SignInFormState(
        email: '',
        password: '',
        isSubmitting: false,
        authFailure: null,
      );
}
