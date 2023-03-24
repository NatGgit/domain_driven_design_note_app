import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:domain_driven_design_note_app/application/auth/sign_in_form/sign_in_form_cubit.dart';
import 'package:domain_driven_design_note_app/domain/auth/auth_failures.dart';
import 'package:domain_driven_design_note_app/domain/auth/base_auth_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final BaseAuthRepository _authRepository;

  AuthBloc(this._authRepository) : super(AuthState.initial()) {
    on<_AuthCheckRequest>((event, emit) {
      final user = _authRepository.getSignedInUser();
      if (user != null) {
        emit(state.copyWith(isAuthenticated: true));
      } else {
        emit(state.copyWith(isAuthenticated: false));
      }
    });
    on<_SignOutEvent>(
      (event, emit) async {
        await _authRepository.signOut();
        emit(state.copyWith(
          isAuthenticated: false,
          authFailure: null,
          isSubmitting: false,
        ));
      },
    );
    on<_RegisterWithEmailEvent>((event, emit) async {
      await _submit(emit, _authRepository.registerWithEmailAndPassword);
    });

    on<_SignInWithEmailEvent>((event, emit) async {
      await _submit(emit, _authRepository.signInWithEmailAndPassword);
    });

    on<_SignWithGoogleEvent>((event, emit) async {
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
      Emitter<AuthState> emit,
      Future<Either<AuthFailure, Unit?>> Function(
              {required String email, required String password})
          action) async {
    emit(
      state.copyWith(
        isSubmitting: true,
        authFailure: null,
      ),
    );

    final result = await action(email: '', password: '');
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
