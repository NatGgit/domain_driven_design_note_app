// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidEmailOrPassword,
    required TResult Function() cancelledByUser,
    required TResult Function() emailAlreadyExists,
    required TResult Function() serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? invalidEmailOrPassword,
    TResult Function()? cancelledByUser,
    TResult Function()? emailAlreadyExists,
    TResult Function()? serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidEmailOrPassword,
    TResult Function()? cancelledByUser,
    TResult Function()? emailAlreadyExists,
    TResult Function()? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmailOrPassword value)
        invalidEmailOrPassword,
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(EmailAlreadyExists value) emailAlreadyExists,
    required TResult Function(ServerError value) serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(EmailAlreadyExists value)? emailAlreadyExists,
    TResult Function(ServerError value)? serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(EmailAlreadyExists value)? emailAlreadyExists,
    TResult Function(ServerError value)? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

/// @nodoc
abstract class _$$InvalidEmailOrPasswordCopyWith<$Res> {
  factory _$$InvalidEmailOrPasswordCopyWith(_$InvalidEmailOrPassword value,
          $Res Function(_$InvalidEmailOrPassword) then) =
      __$$InvalidEmailOrPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvalidEmailOrPasswordCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$$InvalidEmailOrPasswordCopyWith<$Res> {
  __$$InvalidEmailOrPasswordCopyWithImpl(_$InvalidEmailOrPassword _value,
      $Res Function(_$InvalidEmailOrPassword) _then)
      : super(_value, (v) => _then(v as _$InvalidEmailOrPassword));

  @override
  _$InvalidEmailOrPassword get _value =>
      super._value as _$InvalidEmailOrPassword;
}

/// @nodoc

class _$InvalidEmailOrPassword implements InvalidEmailOrPassword {
  const _$InvalidEmailOrPassword();

  @override
  String toString() {
    return 'AuthFailure.invalidEmailOrPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InvalidEmailOrPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidEmailOrPassword,
    required TResult Function() cancelledByUser,
    required TResult Function() emailAlreadyExists,
    required TResult Function() serverError,
  }) {
    return invalidEmailOrPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? invalidEmailOrPassword,
    TResult Function()? cancelledByUser,
    TResult Function()? emailAlreadyExists,
    TResult Function()? serverError,
  }) {
    return invalidEmailOrPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidEmailOrPassword,
    TResult Function()? cancelledByUser,
    TResult Function()? emailAlreadyExists,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (invalidEmailOrPassword != null) {
      return invalidEmailOrPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmailOrPassword value)
        invalidEmailOrPassword,
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(EmailAlreadyExists value) emailAlreadyExists,
    required TResult Function(ServerError value) serverError,
  }) {
    return invalidEmailOrPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(EmailAlreadyExists value)? emailAlreadyExists,
    TResult Function(ServerError value)? serverError,
  }) {
    return invalidEmailOrPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(EmailAlreadyExists value)? emailAlreadyExists,
    TResult Function(ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (invalidEmailOrPassword != null) {
      return invalidEmailOrPassword(this);
    }
    return orElse();
  }
}

abstract class InvalidEmailOrPassword implements AuthFailure {
  const factory InvalidEmailOrPassword() = _$InvalidEmailOrPassword;
}

/// @nodoc
abstract class _$$CancelledByUserCopyWith<$Res> {
  factory _$$CancelledByUserCopyWith(
          _$CancelledByUser value, $Res Function(_$CancelledByUser) then) =
      __$$CancelledByUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CancelledByUserCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$$CancelledByUserCopyWith<$Res> {
  __$$CancelledByUserCopyWithImpl(
      _$CancelledByUser _value, $Res Function(_$CancelledByUser) _then)
      : super(_value, (v) => _then(v as _$CancelledByUser));

  @override
  _$CancelledByUser get _value => super._value as _$CancelledByUser;
}

/// @nodoc

class _$CancelledByUser implements CancelledByUser {
  const _$CancelledByUser();

  @override
  String toString() {
    return 'AuthFailure.cancelledByUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CancelledByUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidEmailOrPassword,
    required TResult Function() cancelledByUser,
    required TResult Function() emailAlreadyExists,
    required TResult Function() serverError,
  }) {
    return cancelledByUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? invalidEmailOrPassword,
    TResult Function()? cancelledByUser,
    TResult Function()? emailAlreadyExists,
    TResult Function()? serverError,
  }) {
    return cancelledByUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidEmailOrPassword,
    TResult Function()? cancelledByUser,
    TResult Function()? emailAlreadyExists,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (cancelledByUser != null) {
      return cancelledByUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmailOrPassword value)
        invalidEmailOrPassword,
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(EmailAlreadyExists value) emailAlreadyExists,
    required TResult Function(ServerError value) serverError,
  }) {
    return cancelledByUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(EmailAlreadyExists value)? emailAlreadyExists,
    TResult Function(ServerError value)? serverError,
  }) {
    return cancelledByUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(EmailAlreadyExists value)? emailAlreadyExists,
    TResult Function(ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (cancelledByUser != null) {
      return cancelledByUser(this);
    }
    return orElse();
  }
}

abstract class CancelledByUser implements AuthFailure {
  const factory CancelledByUser() = _$CancelledByUser;
}

/// @nodoc
abstract class _$$EmailAlreadyExistsCopyWith<$Res> {
  factory _$$EmailAlreadyExistsCopyWith(_$EmailAlreadyExists value,
          $Res Function(_$EmailAlreadyExists) then) =
      __$$EmailAlreadyExistsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmailAlreadyExistsCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$$EmailAlreadyExistsCopyWith<$Res> {
  __$$EmailAlreadyExistsCopyWithImpl(
      _$EmailAlreadyExists _value, $Res Function(_$EmailAlreadyExists) _then)
      : super(_value, (v) => _then(v as _$EmailAlreadyExists));

  @override
  _$EmailAlreadyExists get _value => super._value as _$EmailAlreadyExists;
}

/// @nodoc

class _$EmailAlreadyExists implements EmailAlreadyExists {
  const _$EmailAlreadyExists();

  @override
  String toString() {
    return 'AuthFailure.emailAlreadyExists()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmailAlreadyExists);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidEmailOrPassword,
    required TResult Function() cancelledByUser,
    required TResult Function() emailAlreadyExists,
    required TResult Function() serverError,
  }) {
    return emailAlreadyExists();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? invalidEmailOrPassword,
    TResult Function()? cancelledByUser,
    TResult Function()? emailAlreadyExists,
    TResult Function()? serverError,
  }) {
    return emailAlreadyExists?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidEmailOrPassword,
    TResult Function()? cancelledByUser,
    TResult Function()? emailAlreadyExists,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (emailAlreadyExists != null) {
      return emailAlreadyExists();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmailOrPassword value)
        invalidEmailOrPassword,
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(EmailAlreadyExists value) emailAlreadyExists,
    required TResult Function(ServerError value) serverError,
  }) {
    return emailAlreadyExists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(EmailAlreadyExists value)? emailAlreadyExists,
    TResult Function(ServerError value)? serverError,
  }) {
    return emailAlreadyExists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(EmailAlreadyExists value)? emailAlreadyExists,
    TResult Function(ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (emailAlreadyExists != null) {
      return emailAlreadyExists(this);
    }
    return orElse();
  }
}

abstract class EmailAlreadyExists implements AuthFailure {
  const factory EmailAlreadyExists() = _$EmailAlreadyExists;
}

/// @nodoc
abstract class _$$ServerErrorCopyWith<$Res> {
  factory _$$ServerErrorCopyWith(
          _$ServerError value, $Res Function(_$ServerError) then) =
      __$$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$$ServerErrorCopyWith<$Res> {
  __$$ServerErrorCopyWithImpl(
      _$ServerError _value, $Res Function(_$ServerError) _then)
      : super(_value, (v) => _then(v as _$ServerError));

  @override
  _$ServerError get _value => super._value as _$ServerError;
}

/// @nodoc

class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'AuthFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidEmailOrPassword,
    required TResult Function() cancelledByUser,
    required TResult Function() emailAlreadyExists,
    required TResult Function() serverError,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? invalidEmailOrPassword,
    TResult Function()? cancelledByUser,
    TResult Function()? emailAlreadyExists,
    TResult Function()? serverError,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidEmailOrPassword,
    TResult Function()? cancelledByUser,
    TResult Function()? emailAlreadyExists,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmailOrPassword value)
        invalidEmailOrPassword,
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(EmailAlreadyExists value) emailAlreadyExists,
    required TResult Function(ServerError value) serverError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(EmailAlreadyExists value)? emailAlreadyExists,
    TResult Function(ServerError value)? serverError,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(EmailAlreadyExists value)? emailAlreadyExists,
    TResult Function(ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements AuthFailure {
  const factory ServerError() = _$ServerError;
}
