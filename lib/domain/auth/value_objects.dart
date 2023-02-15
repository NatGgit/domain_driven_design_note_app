import 'package:dartz/dartz.dart';
import 'package:domain_driven_design_note_app/domain/core/value_failures.dart';
import 'package:domain_driven_design_note_app/domain/core/validation_helper.dart';
import 'package:domain_driven_design_note_app/domain/core/value_object.dart';

class EmailAddress extends ValueObject {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(
      ValidationHelper.validateEmail(input),
    );
  }

  const EmailAddress._(this.value);

  @override
  String toString() => 'EmailAddress(value: $value)';
}

class Password extends ValueObject {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(
      ValidationHelper.validatePassword(input),
    );
  }

  const Password._(this.value);

  @override
  String toString() => 'Password(value: $value)';
}
