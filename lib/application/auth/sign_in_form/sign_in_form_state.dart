
part of 'sign_in_form_cubit.dart';

@freezed
class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    required String email,
    required String password,
  }) = _SignInFormState;
  factory SignInFormState.initial() =>
      const SignInFormState(email: '', password: '');
}
