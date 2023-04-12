// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_note_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddNoteState {
//required Note note,
  String get noteText => throw _privateConstructorUsedError;
  Color get noteColor => throw _privateConstructorUsedError;
  List<Todo> get todos => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  NoteFailure? get noteFailure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddNoteStateCopyWith<AddNoteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddNoteStateCopyWith<$Res> {
  factory $AddNoteStateCopyWith(
          AddNoteState value, $Res Function(AddNoteState) then) =
      _$AddNoteStateCopyWithImpl<$Res, AddNoteState>;
  @useResult
  $Res call(
      {String noteText,
      Color noteColor,
      List<Todo> todos,
      bool isSubmitting,
      bool showErrorMessages,
      NoteFailure? noteFailure});
}

/// @nodoc
class _$AddNoteStateCopyWithImpl<$Res, $Val extends AddNoteState>
    implements $AddNoteStateCopyWith<$Res> {
  _$AddNoteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noteText = null,
    Object? noteColor = null,
    Object? todos = null,
    Object? isSubmitting = null,
    Object? showErrorMessages = null,
    Object? noteFailure = freezed,
  }) {
    return _then(_value.copyWith(
      noteText: null == noteText
          ? _value.noteText
          : noteText // ignore: cast_nullable_to_non_nullable
              as String,
      noteColor: null == noteColor
          ? _value.noteColor
          : noteColor // ignore: cast_nullable_to_non_nullable
              as Color,
      todos: null == todos
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      noteFailure: freezed == noteFailure
          ? _value.noteFailure
          : noteFailure // ignore: cast_nullable_to_non_nullable
              as NoteFailure?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddNoteStateCopyWith<$Res>
    implements $AddNoteStateCopyWith<$Res> {
  factory _$$_AddNoteStateCopyWith(
          _$_AddNoteState value, $Res Function(_$_AddNoteState) then) =
      __$$_AddNoteStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String noteText,
      Color noteColor,
      List<Todo> todos,
      bool isSubmitting,
      bool showErrorMessages,
      NoteFailure? noteFailure});
}

/// @nodoc
class __$$_AddNoteStateCopyWithImpl<$Res>
    extends _$AddNoteStateCopyWithImpl<$Res, _$_AddNoteState>
    implements _$$_AddNoteStateCopyWith<$Res> {
  __$$_AddNoteStateCopyWithImpl(
      _$_AddNoteState _value, $Res Function(_$_AddNoteState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noteText = null,
    Object? noteColor = null,
    Object? todos = null,
    Object? isSubmitting = null,
    Object? showErrorMessages = null,
    Object? noteFailure = freezed,
  }) {
    return _then(_$_AddNoteState(
      noteText: null == noteText
          ? _value.noteText
          : noteText // ignore: cast_nullable_to_non_nullable
              as String,
      noteColor: null == noteColor
          ? _value.noteColor
          : noteColor // ignore: cast_nullable_to_non_nullable
              as Color,
      todos: null == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      noteFailure: freezed == noteFailure
          ? _value.noteFailure
          : noteFailure // ignore: cast_nullable_to_non_nullable
              as NoteFailure?,
    ));
  }
}

/// @nodoc

class _$_AddNoteState implements _AddNoteState {
  const _$_AddNoteState(
      {required this.noteText,
      required this.noteColor,
      required final List<Todo> todos,
      required this.isSubmitting,
      required this.showErrorMessages,
      required this.noteFailure})
      : _todos = todos;

//required Note note,
  @override
  final String noteText;
  @override
  final Color noteColor;
  final List<Todo> _todos;
  @override
  List<Todo> get todos {
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  final bool isSubmitting;
  @override
  final bool showErrorMessages;
  @override
  final NoteFailure? noteFailure;

  @override
  String toString() {
    return 'AddNoteState(noteText: $noteText, noteColor: $noteColor, todos: $todos, isSubmitting: $isSubmitting, showErrorMessages: $showErrorMessages, noteFailure: $noteFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddNoteState &&
            (identical(other.noteText, noteText) ||
                other.noteText == noteText) &&
            (identical(other.noteColor, noteColor) ||
                other.noteColor == noteColor) &&
            const DeepCollectionEquality().equals(other._todos, _todos) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.noteFailure, noteFailure) ||
                other.noteFailure == noteFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      noteText,
      noteColor,
      const DeepCollectionEquality().hash(_todos),
      isSubmitting,
      showErrorMessages,
      noteFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddNoteStateCopyWith<_$_AddNoteState> get copyWith =>
      __$$_AddNoteStateCopyWithImpl<_$_AddNoteState>(this, _$identity);
}

abstract class _AddNoteState implements AddNoteState {
  const factory _AddNoteState(
      {required final String noteText,
      required final Color noteColor,
      required final List<Todo> todos,
      required final bool isSubmitting,
      required final bool showErrorMessages,
      required final NoteFailure? noteFailure}) = _$_AddNoteState;

  @override //required Note note,
  String get noteText;
  @override
  Color get noteColor;
  @override
  List<Todo> get todos;
  @override
  bool get isSubmitting;
  @override
  bool get showErrorMessages;
  @override
  NoteFailure? get noteFailure;
  @override
  @JsonKey(ignore: true)
  _$$_AddNoteStateCopyWith<_$_AddNoteState> get copyWith =>
      throw _privateConstructorUsedError;
}
