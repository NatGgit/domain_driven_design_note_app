import 'package:bloc/bloc.dart';
import 'package:domain_driven_design_note_app/domain/auth/base_auth_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final BaseAuthRepository _authRepository;

  AuthBloc(this._authRepository) : super(const AuthState.initial()) {
    on<AuthCheckRequest>((event, emit) {
      final user = _authRepository.getSignInUser();
      if (user != null) {
        emit(const AuthState.authenticated());
      } else {
        emit(const AuthState.unauthenticated());
      }
    });
    on<SignOut>(
      (event, emit) async {
        await _authRepository.signOut();
        emit(const AuthState.unauthenticated());
      },
    );
  }
}
