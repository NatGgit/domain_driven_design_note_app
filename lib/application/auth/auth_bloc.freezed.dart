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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_AuthCheckRequestCopyWith<$Res> {
  factory _$$_AuthCheckRequestCopyWith(
          _$_AuthCheckRequest value, $Res Function(_$_AuthCheckRequest) then) =
      __$$_AuthCheckRequestCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthCheckRequestCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_AuthCheckRequest>
    implements _$$_AuthCheckRequestCopyWith<$Res> {
  __$$_AuthCheckRequestCopyWithImpl(
      _$_AuthCheckRequest _value, $Res Function(_$_AuthCheckRequest) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthCheckRequest implements _AuthCheckRequest {
  const _$_AuthCheckRequest();

  @override
  String toString() {
    return 'AuthEvent.authCheckRequest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthCheckRequest);
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
  const factory _AuthCheckRequest() = _$_AuthCheckRequest;
}

/// @nodoc
abstract class _$$_SignOutEventCopyWith<$Res> {
  factory _$$_SignOutEventCopyWith(
          _$_SignOutEvent value, $Res Function(_$_SignOutEvent) then) =
      __$$_SignOutEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignOutEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_SignOutEvent>
    implements _$$_SignOutEventCopyWith<$Res> {
  __$$_SignOutEventCopyWithImpl(
      _$_SignOutEvent _value, $Res Function(_$_SignOutEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignOutEvent implements _SignOutEvent {
  const _$_SignOutEvent();

  @override
  String toString() {
    return 'AuthEvent.signOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignOutEvent);
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
  const factory _SignOutEvent() = _$_SignOutEvent;
}

/// @nodoc
abstract class _$$_RegisterWithEmailEventCopyWith<$Res> {
  factory _$$_RegisterWithEmailEventCopyWith(_$_RegisterWithEmailEvent value,
          $Res Function(_$_RegisterWithEmailEvent) then) =
      __$$_RegisterWithEmailEventCopyWithImpl<$Res>;
  @useResult
  $Res call({SignInFormState signInFormState});

  $SignInFormStateCopyWith<$Res> get signInFormState;
}

/// @nodoc
class __$$_RegisterWithEmailEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_RegisterWithEmailEvent>
    implements _$$_RegisterWithEmailEventCopyWith<$Res> {
  __$$_RegisterWithEmailEventCopyWithImpl(_$_RegisterWithEmailEvent _value,
      $Res Function(_$_RegisterWithEmailEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signInFormState = null,
  }) {
    return _then(_$_RegisterWithEmailEvent(
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

class _$_RegisterWithEmailEvent implements _RegisterWithEmailEvent {
  const _$_RegisterWithEmailEvent({required this.signInFormState});

  @override
  final SignInFormState signInFormState;

  @override
  String toString() {
    return 'AuthEvent.registerWithEmail(signInFormState: $signInFormState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterWithEmailEvent &&
            (identical(other.signInFormState, signInFormState) ||
                other.signInFormState == signInFormState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, signInFormState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterWithEmailEventCopyWith<_$_RegisterWithEmailEvent> get copyWith =>
      __$$_RegisterWithEmailEventCopyWithImpl<_$_RegisterWithEmailEvent>(
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
      _$_RegisterWithEmailEvent;

  SignInFormState get signInFormState;
  @JsonKey(ignore: true)
  _$$_RegisterWithEmailEventCopyWith<_$_RegisterWithEmailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignInWithEmailEventCopyWith<$Res> {
  factory _$$_SignInWithEmailEventCopyWith(_$_SignInWithEmailEvent value,
          $Res Function(_$_SignInWithEmailEvent) then) =
      __$$_SignInWithEmailEventCopyWithImpl<$Res>;
  @useResult
  $Res call({SignInFormState signInFormState});

  $SignInFormStateCopyWith<$Res> get signInFormState;
}

/// @nodoc
class __$$_SignInWithEmailEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_SignInWithEmailEvent>
    implements _$$_SignInWithEmailEventCopyWith<$Res> {
  __$$_SignInWithEmailEventCopyWithImpl(_$_SignInWithEmailEvent _value,
      $Res Function(_$_SignInWithEmailEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signInFormState = null,
  }) {
    return _then(_$_SignInWithEmailEvent(
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

class _$_SignInWithEmailEvent implements _SignInWithEmailEvent {
  const _$_SignInWithEmailEvent({required this.signInFormState});

  @override
  final SignInFormState signInFormState;

  @override
  String toString() {
    return 'AuthEvent.signInWithEmail(signInFormState: $signInFormState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInWithEmailEvent &&
            (identical(other.signInFormState, signInFormState) ||
                other.signInFormState == signInFormState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, signInFormState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignInWithEmailEventCopyWith<_$_SignInWithEmailEvent> get copyWith =>
      __$$_SignInWithEmailEventCopyWithImpl<_$_SignInWithEmailEvent>(
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
      _$_SignInWithEmailEvent;

  SignInFormState get signInFormState;
  @JsonKey(ignore: true)
  _$$_SignInWithEmailEventCopyWith<_$_SignInWithEmailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignWithGoogleEventCopyWith<$Res> {
  factory _$$_SignWithGoogleEventCopyWith(_$_SignWithGoogleEvent value,
          $Res Function(_$_SignWithGoogleEvent) then) =
      __$$_SignWithGoogleEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignWithGoogleEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_SignWithGoogleEvent>
    implements _$$_SignWithGoogleEventCopyWith<$Res> {
  __$$_SignWithGoogleEventCopyWithImpl(_$_SignWithGoogleEvent _value,
      $Res Function(_$_SignWithGoogleEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignWithGoogleEvent implements _SignWithGoogleEvent {
  const _$_SignWithGoogleEvent();

  @override
  String toString() {
    return 'AuthEvent.signInWithGoogle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignWithGoogleEvent);
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
  const factory _SignWithGoogleEvent() = _$_SignWithGoogleEvent;
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
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isAuthenticated, bool isSubmitting, AuthFailure? authFailure});
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthState>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAuthenticated = null,
    Object? isSubmitting = null,
    Object? authFailure = freezed,
  }) {
    return _then(_$_AuthState(
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

class _$_AuthState implements _AuthState {
  const _$_AuthState(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
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
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {required final bool isAuthenticated,
      required final bool isSubmitting,
      required final AuthFailure? authFailure}) = _$_AuthState;

  @override
  bool get isAuthenticated;
  @override
  bool get isSubmitting;
  @override
  AuthFailure? get authFailure;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
