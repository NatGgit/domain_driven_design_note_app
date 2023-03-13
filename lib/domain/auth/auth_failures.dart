enum AuthFailure {
  invalidEmailOrPassword(message: 'Invalid email or password'),
  cancelledByUser(message: 'Cancelled by usesr'),
  emailAlreadyExists(message: 'User with this email already exists'),
  generalFailure(message: 'Something went wrong');

  const AuthFailure({required this.message});

  final String message;
}
