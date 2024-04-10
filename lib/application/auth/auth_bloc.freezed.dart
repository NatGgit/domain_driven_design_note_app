// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequest,
    required TResult Function() signOut,
    required TResult Function(SignInFormState signInFormState)
        registerWithEmail,
    required TResult Function(SignInFormState signInFormState) signInWithEmail,
    required TResult Function() signInWithGoogle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authCheckRequest,
    TResult? Function()? signOut,
    TResult? Function(SignInFormState signInFormState)? registerWithEmail,
    TResult? Function(SignInFormState signInFormState)? signInWithEmail,
    TResult? Function()? signInWithGoogle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequest,
    TResult Function()? signOut,
    TResult Function(SignInFormState signInFormState)? registerWithEmail,
    TResult Function(SignInFormState signInFormState)? signInWithEmail,
    TResult Function()? signInWithGoogle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthCheckRequest value) authCheckRequest,
    required TResult Function(_SignOutEvent value) signOut,
    required TResult Function(_RegisterWithEmailEvent value) registerWithEmail,
    required TResult Function(_SignInWithEmailEvent value) signInWithEmail,
    required TResult Function(_SignWithGoogleEvent value) signInWithGoogle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthCheckRequest value)? authCheckRequest,
    TResult? Function(_SignOutEvent value)? signOut,
    TResult? Function(_RegisterWithEmailEvent value)? registerWithEmail,
    TResult? Function(_SignInWithEmailEvent value)? signInWithEmail,
    TResult? Function(_SignWithGoogleEvent value)? signInWithGoogle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthCheckRequest value)? authCheckRequest,
    TResult Function(_SignOutEvent value)? signOut,
    TResult Function(_RegisterWithEmailEvent value)? registerWithEmail,
    TResult Function(_SignInWithEmailEvent value)? signInWithEmail,
    TResult Function(_SignWithGoogleEvent value)? signInWithGoogle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthCheckRequestImplCopyWith<$Res> {
  factory _$$AuthCheckRequestImplCopyWith(_$AuthCheckRequestImpl value,
          $Res Function(_$AuthCheckRequestImpl) then) =
      __$$AuthCheckRequestImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthCheckRequestImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthCheckRequestImpl>
    implements _$$AuthCheckRequestImplCopyWith<$Res> {
  __$$AuthCheckRequestImplCopyWithImpl(_$AuthCheckRequestImpl _value,
      $Res Function(_$AuthCheckRequestImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthCheckRequestImpl implements _AuthCheckRequest {
  const _$AuthCheckRequestImpl();

  @override
  String toString() {
    return 'AuthEvent.authCheckRequest()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthCheckRequestImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequest,
    required TResult Function() signOut,
    required TResult Function(SignInFormState signInFormState)
        registerWithEmail,
    required TResult Function(SignInFormState signInFormState) signInWithEmail,
    required TResult Function() signInWithGoogle,
  }) {
    return authCheckRequest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authCheckRequest,
    TResult? Function()? signOut,
    TResult? Function(SignInFormState signInFormState)? registerWithEmail,
    TResult? Function(SignInFormState signInFormState)? signInWithEmail,
    TResult? Function()? signInWithGoogle,
  }) {
    return authCheckRequest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequest,
    TResult Function()? signOut,
    TResult Function(SignInFormState signInFormState)? registerWithEmail,
    TResult Function(SignInFormState signInFormState)? signInWithEmail,
    TResult Function()? signInWithGoogle,
    required TResult orElse(),
  }) {
    if (authCheckRequest != null) {
      return authCheckRequest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthCheckRequest value) authCheckRequest,
    required TResult Function(_SignOutEvent value) signOut,
    required TResult Function(_RegisterWithEmailEvent value) registerWithEmail,
    required TResult Function(_SignInWithEmailEvent value) signInWithEmail,
    required TResult Function(_SignWithGoogleEvent value) signInWithGoogle,
  }) {
    return authCheckRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthCheckRequest value)? authCheckRequest,
    TResult? Function(_SignOutEvent value)? signOut,
    TResult? Function(_RegisterWithEmailEvent value)? registerWithEmail,
    TResult? Function(_SignInWithEmailEvent value)? signInWithEmail,
    TResult? Function(_SignWithGoogleEvent value)? signInWithGoogle,
  }) {
    return authCheckRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthCheckRequest value)? authCheckRequest,
    TResult Function(_SignOutEvent value)? signOut,
    TResult Function(_RegisterWithEmailEvent value)? registerWithEmail,
    TResult Function(_SignInWithEmailEvent value)? signInWithEmail,
    TResult Function(_SignWithGoogleEvent value)? signInWithGoogle,
    required TResult orElse(),
  }) {
    if (authCheckRequest != null) {
      return authCheckRequest(this);
    }
    return orElse();
  }
}

abstract class _AuthCheckRequest implements AuthEvent {
  const factory _AuthCheckRequest() = _$AuthCheckRequestImpl;
}

/// @nodoc
abstract class _$$SignOutEventImplCopyWith<$Res> {
  factory _$$SignOutEventImplCopyWith(
          _$SignOutEventImpl value, $Res Function(_$SignOutEventImpl) then) =
      __$$SignOutEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignOutEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignOutEventImpl>
    implements _$$SignOutEventImplCopyWith<$Res> {
  __$$SignOutEventImplCopyWithImpl(
      _$SignOutEventImpl _value, $Res Function(_$SignOutEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignOutEventImpl implements _SignOutEvent {
  const _$SignOutEventImpl();

  @override
  String toString() {
    return 'AuthEvent.signOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignOutEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequest,
    required TResult Function() signOut,
    required TResult Function(SignInFormState signInFormState)
        registerWithEmail,
    required TResult Function(SignInFormState signInFormState) signInWithEmail,
    required TResult Function() signInWithGoogle,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authCheckRequest,
    TResult? Function()? signOut,
    TResult? Function(SignInFormState signInFormState)? registerWithEmail,
    TResult? Function(SignInFormState signInFormState)? signInWithEmail,
    TResult? Function()? signInWithGoogle,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequest,
    TResult Function()? signOut,
    TResult Function(SignInFormState signInFormState)? registerWithEmail,
    TResult Function(SignInFormState signInFormState)? signInWithEmail,
    TResult Function()? signInWithGoogle,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthCheckRequest value) authCheckRequest,
    required TResult Function(_SignOutEvent value) signOut,
    required TResult Function(_RegisterWithEmailEvent value) registerWithEmail,
    required TResult Function(_SignInWithEmailEvent value) signInWithEmail,
    required TResult Function(_SignWithGoogleEvent value) signInWithGoogle,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthCheckRequest value)? authCheckRequest,
    TResult? Function(_SignOutEvent value)? signOut,
    TResult? Function(_RegisterWithEmailEvent value)? registerWithEmail,
    TResult? Function(_SignInWithEmailEvent value)? signInWithEmail,
    TResult? Function(_SignWithGoogleEvent value)? signInWithGoogle,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthCheckRequest value)? authCheckRequest,
    TResult Function(_SignOutEvent value)? signOut,
    TResult Function(_RegisterWithEmailEvent value)? registerWithEmail,
    TResult Function(_SignInWithEmailEvent value)? signInWithEmail,
    TResult Function(_SignWithGoogleEvent value)? signInWithGoogle,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class _SignOutEvent implements AuthEvent {
  const factory _SignOutEvent() = _$SignOutEventImpl;
}

/// @nodoc
abstract class _$$RegisterWithEmailEventImplCopyWith<$Res> {
  factory _$$RegisterWithEmailEventImplCopyWith(
          _$RegisterWithEmailEventImpl value,
          $Res Function(_$RegisterWithEmailEventImpl) then) =
      __$$RegisterWithEmailEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SignInFormState signInFormState});

  $SignInFormStateCopyWith<$Res> get signInFormState;
}

/// @nodoc
class __$$RegisterWithEmailEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$RegisterWithEmailEventImpl>
    implements _$$RegisterWithEmailEventImplCopyWith<$Res> {
  __$$RegisterWithEmailEventImplCopyWithImpl(
      _$RegisterWithEmailEventImpl _value,
      $Res Function(_$RegisterWithEmailEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signInFormState = null,
  }) {
    return _then(_$RegisterWithEmailEventImpl(
      signInFormState: null == signInFormState
          ? _value.signInFormState
          : signInFormState // ignore: cast_nullable_to_non_nullable
              as SignInFormState,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SignInFormStateCopyWith<$Res> get signInFormState {
    return $SignInFormStateCopyWith<$Res>(_value.signInFormState, (value) {
      return _then(_value.copyWith(signInFormState: value));
    });
  }
}

/// @nodoc

class _$RegisterWithEmailEventImpl implements _RegisterWithEmailEvent {
  const _$RegisterWithEmailEventImpl({required this.signInFormState});

  @override
  final SignInFormState signInFormState;

  @override
  String toString() {
    return 'AuthEvent.registerWithEmail(signInFormState: $signInFormState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterWithEmailEventImpl &&
            (identical(other.signInFormState, signInFormState) ||
                other.signInFormState == signInFormState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, signInFormState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterWithEmailEventImplCopyWith<_$RegisterWithEmailEventImpl>
      get copyWith => __$$RegisterWithEmailEventImplCopyWithImpl<
          _$RegisterWithEmailEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequest,
    required TResult Function() signOut,
    required TResult Function(SignInFormState signInFormState)
        registerWithEmail,
    required TResult Function(SignInFormState signInFormState) signInWithEmail,
    required TResult Function() signInWithGoogle,
  }) {
    return registerWithEmail(signInFormState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authCheckRequest,
    TResult? Function()? signOut,
    TResult? Function(SignInFormState signInFormState)? registerWithEmail,
    TResult? Function(SignInFormState signInFormState)? signInWithEmail,
    TResult? Function()? signInWithGoogle,
  }) {
    return registerWithEmail?.call(signInFormState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequest,
    TResult Function()? signOut,
    TResult Function(SignInFormState signInFormState)? registerWithEmail,
    TResult Function(SignInFormState signInFormState)? signInWithEmail,
    TResult Function()? signInWithGoogle,
    required TResult orElse(),
  }) {
    if (registerWithEmail != null) {
      return registerWithEmail(signInFormState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthCheckRequest value) authCheckRequest,
    required TResult Function(_SignOutEvent value) signOut,
    required TResult Function(_RegisterWithEmailEvent value) registerWithEmail,
    required TResult Function(_SignInWithEmailEvent value) signInWithEmail,
    required TResult Function(_SignWithGoogleEvent value) signInWithGoogle,
  }) {
    return registerWithEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthCheckRequest value)? authCheckRequest,
    TResult? Function(_SignOutEvent value)? signOut,
    TResult? Function(_RegisterWithEmailEvent value)? registerWithEmail,
    TResult? Function(_SignInWithEmailEvent value)? signInWithEmail,
    TResult? Function(_SignWithGoogleEvent value)? signInWithGoogle,
  }) {
    return registerWithEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthCheckRequest value)? authCheckRequest,
    TResult Function(_SignOutEvent value)? signOut,
    TResult Function(_RegisterWithEmailEvent value)? registerWithEmail,
    TResult Function(_SignInWithEmailEvent value)? signInWithEmail,
    TResult Function(_SignWithGoogleEvent value)? signInWithGoogle,
    required TResult orElse(),
  }) {
    if (registerWithEmail != null) {
      return registerWithEmail(this);
    }
    return orElse();
  }
}

abstract class _RegisterWithEmailEvent implements AuthEvent {
  const factory _RegisterWithEmailEvent(
          {required final SignInFormState signInFormState}) =
      _$RegisterWithEmailEventImpl;

  SignInFormState get signInFormState;
  @JsonKey(ignore: true)
  _$$RegisterWithEmailEventImplCopyWith<_$RegisterWithEmailEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInWithEmailEventImplCopyWith<$Res> {
  factory _$$SignInWithEmailEventImplCopyWith(_$SignInWithEmailEventImpl value,
          $Res Function(_$SignInWithEmailEventImpl) then) =
      __$$SignInWithEmailEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SignInFormState signInFormState});

  $SignInFormStateCopyWith<$Res> get signInFormState;
}

/// @nodoc
class __$$SignInWithEmailEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignInWithEmailEventImpl>
    implements _$$SignInWithEmailEventImplCopyWith<$Res> {
  __$$SignInWithEmailEventImplCopyWithImpl(_$SignInWithEmailEventImpl _value,
      $Res Function(_$SignInWithEmailEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signInFormState = null,
  }) {
    return _then(_$SignInWithEmailEventImpl(
      signInFormState: null == signInFormState
          ? _value.signInFormState
          : signInFormState // ignore: cast_nullable_to_non_nullable
              as SignInFormState,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SignInFormStateCopyWith<$Res> get signInFormState {
    return $SignInFormStateCopyWith<$Res>(_value.signInFormState, (value) {
      return _then(_value.copyWith(signInFormState: value));
    });
  }
}

/// @nodoc

class _$SignInWithEmailEventImpl implements _SignInWithEmailEvent {
  const _$SignInWithEmailEventImpl({required this.signInFormState});

  @override
  final SignInFormState signInFormState;

  @override
  String toString() {
    return 'AuthEvent.signInWithEmail(signInFormState: $signInFormState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInWithEmailEventImpl &&
            (identical(other.signInFormState, signInFormState) ||
                other.signInFormState == signInFormState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, signInFormState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInWithEmailEventImplCopyWith<_$SignInWithEmailEventImpl>
      get copyWith =>
          __$$SignInWithEmailEventImplCopyWithImpl<_$SignInWithEmailEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequest,
    required TResult Function() signOut,
    required TResult Function(SignInFormState signInFormState)
        registerWithEmail,
    required TResult Function(SignInFormState signInFormState) signInWithEmail,
    required TResult Function() signInWithGoogle,
  }) {
    return signInWithEmail(signInFormState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authCheckRequest,
    TResult? Function()? signOut,
    TResult? Function(SignInFormState signInFormState)? registerWithEmail,
    TResult? Function(SignInFormState signInFormState)? signInWithEmail,
    TResult? Function()? signInWithGoogle,
  }) {
    return signInWithEmail?.call(signInFormState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequest,
    TResult Function()? signOut,
    TResult Function(SignInFormState signInFormState)? registerWithEmail,
    TResult Function(SignInFormState signInFormState)? signInWithEmail,
    TResult Function()? signInWithGoogle,
    required TResult orElse(),
  }) {
    if (signInWithEmail != null) {
      return signInWithEmail(signInFormState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthCheckRequest value) authCheckRequest,
    required TResult Function(_SignOutEvent value) signOut,
    required TResult Function(_RegisterWithEmailEvent value) registerWithEmail,
    required TResult Function(_SignInWithEmailEvent value) signInWithEmail,
    required TResult Function(_SignWithGoogleEvent value) signInWithGoogle,
  }) {
    return signInWithEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthCheckRequest value)? authCheckRequest,
    TResult? Function(_SignOutEvent value)? signOut,
    TResult? Function(_RegisterWithEmailEvent value)? registerWithEmail,
    TResult? Function(_SignInWithEmailEvent value)? signInWithEmail,
    TResult? Function(_SignWithGoogleEvent value)? signInWithGoogle,
  }) {
    return signInWithEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthCheckRequest value)? authCheckRequest,
    TResult Function(_SignOutEvent value)? signOut,
    TResult Function(_RegisterWithEmailEvent value)? registerWithEmail,
    TResult Function(_SignInWithEmailEvent value)? signInWithEmail,
    TResult Function(_SignWithGoogleEvent value)? signInWithGoogle,
    required TResult orElse(),
  }) {
    if (signInWithEmail != null) {
      return signInWithEmail(this);
    }
    return orElse();
  }
}

abstract class _SignInWithEmailEvent implements AuthEvent {
  const factory _SignInWithEmailEvent(
          {required final SignInFormState signInFormState}) =
      _$SignInWithEmailEventImpl;

  SignInFormState get signInFormState;
  @JsonKey(ignore: true)
  _$$SignInWithEmailEventImplCopyWith<_$SignInWithEmailEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignWithGoogleEventImplCopyWith<$Res> {
  factory _$$SignWithGoogleEventImplCopyWith(_$SignWithGoogleEventImpl value,
          $Res Function(_$SignWithGoogleEventImpl) then) =
      __$$SignWithGoogleEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignWithGoogleEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignWithGoogleEventImpl>
    implements _$$SignWithGoogleEventImplCopyWith<$Res> {
  __$$SignWithGoogleEventImplCopyWithImpl(_$SignWithGoogleEventImpl _value,
      $Res Function(_$SignWithGoogleEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignWithGoogleEventImpl implements _SignWithGoogleEvent {
  const _$SignWithGoogleEventImpl();

  @override
  String toString() {
    return 'AuthEvent.signInWithGoogle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignWithGoogleEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequest,
    required TResult Function() signOut,
    required TResult Function(SignInFormState signInFormState)
        registerWithEmail,
    required TResult Function(SignInFormState signInFormState) signInWithEmail,
    required TResult Function() signInWithGoogle,
  }) {
    return signInWithGoogle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authCheckRequest,
    TResult? Function()? signOut,
    TResult? Function(SignInFormState signInFormState)? registerWithEmail,
    TResult? Function(SignInFormState signInFormState)? signInWithEmail,
    TResult? Function()? signInWithGoogle,
  }) {
    return signInWithGoogle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequest,
    TResult Function()? signOut,
    TResult Function(SignInFormState signInFormState)? registerWithEmail,
    TResult Function(SignInFormState signInFormState)? signInWithEmail,
    TResult Function()? signInWithGoogle,
    required TResult orElse(),
  }) {
    if (signInWithGoogle != null) {
      return signInWithGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthCheckRequest value) authCheckRequest,
    required TResult Function(_SignOutEvent value) signOut,
    required TResult Function(_RegisterWithEmailEvent value) registerWithEmail,
    required TResult Function(_SignInWithEmailEvent value) signInWithEmail,
    required TResult Function(_SignWithGoogleEvent value) signInWithGoogle,
  }) {
    return signInWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthCheckRequest value)? authCheckRequest,
    TResult? Function(_SignOutEvent value)? signOut,
    TResult? Function(_RegisterWithEmailEvent value)? registerWithEmail,
    TResult? Function(_SignInWithEmailEvent value)? signInWithEmail,
    TResult? Function(_SignWithGoogleEvent value)? signInWithGoogle,
  }) {
    return signInWithGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthCheckRequest value)? authCheckRequest,
    TResult Function(_SignOutEvent value)? signOut,
    TResult Function(_RegisterWithEmailEvent value)? registerWithEmail,
    TResult Function(_SignInWithEmailEvent value)? signInWithEmail,
    TResult Function(_SignWithGoogleEvent value)? signInWithGoogle,
    required TResult orElse(),
  }) {
    if (signInWithGoogle != null) {
      return signInWithGoogle(this);
    }
    return orElse();
  }
}

abstract class _SignWithGoogleEvent implements AuthEvent {
  const factory _SignWithGoogleEvent() = _$SignWithGoogleEventImpl;
}

/// @nodoc
mixin _$AuthState {
  bool get isAuthenticated => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  AuthFailure? get authFailure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {bool isAuthenticated, bool isSubmitting, AuthFailure? authFailure});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAuthenticated = null,
    Object? isSubmitting = null,
    Object? authFailure = freezed,
  }) {
    return _then(_value.copyWith(
      isAuthenticated: null == isAuthenticated
          ? _value.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailure: freezed == authFailure
          ? _value.authFailure
          : authFailure // ignore: cast_nullable_to_non_nullable
              as AuthFailure?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isAuthenticated, bool isSubmitting, AuthFailure? authFailure});
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAuthenticated = null,
    Object? isSubmitting = null,
    Object? authFailure = freezed,
  }) {
    return _then(_$AuthStateImpl(
      isAuthenticated: null == isAuthenticated
          ? _value.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailure: freezed == authFailure
          ? _value.authFailure
          : authFailure // ignore: cast_nullable_to_non_nullable
              as AuthFailure?,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl implements _AuthState {
  const _$AuthStateImpl(
      {required this.isAuthenticated,
      required this.isSubmitting,
      required this.authFailure});

  @override
  final bool isAuthenticated;
  @override
  final bool isSubmitting;
  @override
  final AuthFailure? authFailure;

  @override
  String toString() {
    return 'AuthState(isAuthenticated: $isAuthenticated, isSubmitting: $isSubmitting, authFailure: $authFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.isAuthenticated, isAuthenticated) ||
                other.isAuthenticated == isAuthenticated) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.authFailure, authFailure) ||
                other.authFailure == authFailure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isAuthenticated, isSubmitting, authFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {required final bool isAuthenticated,
      required final bool isSubmitting,
      required final AuthFailure? authFailure}) = _$AuthStateImpl;

  @override
  bool get isAuthenticated;
  @override
  bool get isSubmitting;
  @override
  AuthFailure? get authFailure;
  @override
  @JsonKey(ignore: true)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
