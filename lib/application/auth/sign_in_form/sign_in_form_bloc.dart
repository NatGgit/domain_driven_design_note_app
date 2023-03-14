import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:domain_driven_design_note_app/domain/auth/auth_failures.dart';
import 'package:domain_driven_design_note_app/domain/auth/i_auth_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_form_bloc.freezed.dart';
part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;
  SignInFormBloc(this._authFacade) : super(SignInFormState.initial()) {
    on<EmailChanged>((event, emit) {
      emit(
        state.copyWith(
          email: event.emailStr,
          authFailure: null,
          showErrorMessages: false,
        ),
      );
    });
    on<PasswordChanged>((event, emit) {
      emit(
        state.copyWith(
          password: event.passwordStr,
          authFailure: null,
          showErrorMessages: false,
        ),
      );
    });
    on<RegisterWithEmail>((event, emit) async {
      await _submit(emit, _authFacade.registerWithEmailAndPassword);
    });

    on<SignInWithEmail>((event, emit) async {
      await _submit(emit, _authFacade.signInWithEmailAndPassword);
    });

    on<SignWithGoogle>((event, emit) async {
      emit(
        state.copyWith(
          authFailure: null,
          isSubmitting: true,
          showErrorMessages: false,
        ),
      );
      final result = await _authFacade.signInWithGoogle();
      result.fold(
        (failure) => emit(
          state.copyWith(
            isSubmitting: false,
            authFailure: failure,
            showErrorMessages: true,
          ),
        ),
        (success) => emit(
          state.copyWith(
            isSubmitting: false,
            authFailure: null,
            showErrorMessages: false,
          ),
        ),
      );
    });
  }

  Future<void> _submit(
      Emitter<SignInFormState> emit,
      Future<Either<AuthFailure, Unit?>> Function(
              {required String email, required String password})
          action) async {
    emit(
      state.copyWith(
        isSubmitting: true,
        showErrorMessages: false,
        authFailure: null,
      ),
    );

    final result = await action(email: state.email, password: state.password);
    result.fold(
      (failure) => emit(
        state.copyWith(
          showErrorMessages: true,
          isSubmitting: false,
          authFailure: failure,
        ),
      ),
      (right) => emit(
        state.copyWith(
          isSubmitting: false,
          authFailure: null,
          showErrorMessages: false,
        ),
      ),
    );
  }
}
