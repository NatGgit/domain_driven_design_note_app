import 'package:dartz/dartz.dart';

import 'value_failures.dart';

class ValidationHelper {
  static Either<ValueFailure<String>, String> validateEmail(String input) {
    const emailRegex =
        r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
    if (RegExp(emailRegex).hasMatch(input)) {
      return Right(input);
    } else {
      return Left(ValueFailure.invalidEmail(value: input));
    }
  }

  static Either<ValueFailure<String>, String> validatePassword(String input) {
    if (input.length >= 6) {
      return Right(input);
    } else {
      return Left(ValueFailure.shortPassword(value: input));
    }
  }
}
