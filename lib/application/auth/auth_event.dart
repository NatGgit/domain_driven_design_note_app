part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authCheckRequest() = AuthCheckRequest;
  const factory AuthEvent.signOut() = SignOut;
}
