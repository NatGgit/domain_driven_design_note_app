import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:domain_driven_design_note_app/domain/auth/auth_failures.dart';
import 'package:domain_driven_design_note_app/domain/auth/i_auth_facade.dart';
import 'package:domain_driven_design_note_app/domain/auth/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_form_bloc.freezed.dart';
part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;
  SignInFormBloc(this._authFacade) : super(SignInFormState.initial()) {
    on<EmailChanged>((event, emit) {
      emit(
        state.copyWith(
          email: EmailAddress(event.emailStr),
          authResultOption: const None(),
        ),
      );
    });
    on<PasswordChanged>((event, emit) {
      emit(
        state.copyWith(
          password: Password(event.passwordStr),
          authResultOption: const None(),
        ),
      );
    });
    on<RegisterWithEmail>((event, emit) async {
      await _checkValidationAndPerformAction(
          emit, _authFacade.registerWithEmailAndPassword);
    });
    on<SignInWithEmail>((event, emit) async {
      await _checkValidationAndPerformAction(
          emit, _authFacade.signInWithEmailAndPassword);
    });
    on<SignWithGoogle>((event, emit) async {
      emit(
        state.copyWith(
          authResultOption: const None(),
          isSubmitting: true,
        ),
      );
      final result = await _authFacade.signInWithGoogle();
      emit(
        state.copyWith(
          isSubmitting: false,
          authResultOption: Some(result),
        ),
      );
    });
  }

  Future<void> _checkValidationAndPerformAction(
      Emitter<SignInFormState> emit,
      Future<Either<AuthFailure, Unit?>> Function(
              {required EmailAddress email, required Password password})
          action) async {
    Either<AuthFailure, Unit?>? result;

    final isEmailValid = state.email.isValid();
    final isPasswordValid = state.password.isValid();

    if (isEmailValid && isPasswordValid) {
      emit(state.copyWith(
        isSubmitting: true,
        showErrorMessages: false,
        authResultOption: const None(),
      ));
      result = await action(email: state.email, password: state.password);
    }
    emit(
      state.copyWith(
        showErrorMessages: true,
        isSubmitting: false,
        authResultOption: optionOf(result),
      ),
    );
  }
}
