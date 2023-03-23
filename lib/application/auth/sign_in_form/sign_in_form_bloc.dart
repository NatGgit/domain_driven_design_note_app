import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:domain_driven_design_note_app/domain/auth/auth_failures.dart';
import 'package:domain_driven_design_note_app/domain/auth/base_auth_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_form_bloc.freezed.dart';
part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final BaseAuthRepository _authRepository;
  SignInFormBloc(this._authRepository) : super(SignInFormState.initial()) {
    on<EmailChangedEvent>((event, emit) {
      emit(
        state.copyWith(
          email: event.emailStr,
          authFailure: null,
        ),
      );
    });
    on<PasswordChangedEvent>((event, emit) {
      emit(
        state.copyWith(
          password: event.password,
          authFailure: null,
        ),
      );
    });
    on<RegisterWithEmailEvent>((event, emit) async {
      await _submit(emit, _authRepository.registerWithEmailAndPassword);
    });

    on<SignInWithEmailEvent>((event, emit) async {
      await _submit(emit, _authRepository.signInWithEmailAndPassword);
    });

    on<SignWithGoogleEvent>((event, emit) async {
      emit(
        state.copyWith(
          authFailure: null,
          isSubmitting: true,
        ),
      );
      final result = await _authRepository.signInWithGoogle();
      result.fold(
        (failure) => emit(
          state.copyWith(
            isSubmitting: false,
            authFailure: failure,
          ),
        ),
        (success) => emit(
          state.copyWith(
            isSubmitting: false,
            authFailure: null,
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
        authFailure: null,
      ),
    );

    final result = await action(email: state.email, password: state.password);
    result.fold(
      (failure) => emit(
        state.copyWith(
          isSubmitting: false,
          authFailure: failure,
        ),
      ),
      (right) => emit(
        state.copyWith(
          isSubmitting: false,
          authFailure: null,
        ),
      ),
    );
  }
}
