import 'package:bloc/bloc.dart';
import 'package:domain_driven_design_note_app/domain/auth/base_auth_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final BaseAuthRepository _authFacade;

  AuthBloc(this._authFacade) : super(const AuthState.initial()) {
    on<AuthCheckRequest>((event, emit) {
      final user = _authFacade.getSignInUser();
      if (user != null) {
        emit(const AuthState.authenticated());
      } else {
        emit(const AuthState.unauthenticated());
      }
    });
    on<SignOut>(
      (event, emit) async {
        await _authFacade.signOut();
        emit(const AuthState.unauthenticated());
      },
    );
  }
}
