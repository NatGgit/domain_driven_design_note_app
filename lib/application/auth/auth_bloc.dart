import 'package:bloc/bloc.dart';
import 'package:domain_driven_design_note_app/domain/auth/i_auth_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;

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
