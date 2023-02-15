import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({required String value}) =
      InvalidEmail<T>;
  const factory ValueFailure.shortPassword({required String value}) =
      ShortPassword<T>;
}
