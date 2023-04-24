// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NoteFormState {
  String? get noteTitle => throw _privateConstructorUsedError;
  String get noteText => throw _privateConstructorUsedError;
  Color? get noteColor => throw _privateConstructorUsedError;
  List<Todo> get todos => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteFormStateCopyWith<NoteFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteFormStateCopyWith<$Res> {
  factory $NoteFormStateCopyWith(
          NoteFormState value, $Res Function(NoteFormState) then) =
      _$NoteFormStateCopyWithImpl<$Res, NoteFormState>;
  @useResult
  $Res call(
      {String? noteTitle, String noteText, Color? noteColor, List<Todo> todos});
}

/// @nodoc
class _$NoteFormStateCopyWithImpl<$Res, $Val extends NoteFormState>
    implements $NoteFormStateCopyWith<$Res> {
  _$NoteFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noteTitle = freezed,
    Object? noteText = null,
    Object? noteColor = freezed,
    Object? todos = null,
  }) {
    return _then(_value.copyWith(
      noteTitle: freezed == noteTitle
          ? _value.noteTitle
          : noteTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      noteText: null == noteText
          ? _value.noteText
          : noteText // ignore: cast_nullable_to_non_nullable
              as String,
      noteColor: freezed == noteColor
          ? _value.noteColor
          : noteColor // ignore: cast_nullable_to_non_nullable
              as Color?,
      todos: null == todos
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddNoteStateCopyWith<$Res>
    implements $NoteFormStateCopyWith<$Res> {
  factory _$$_AddNoteStateCopyWith(
          _$_AddNoteState value, $Res Function(_$_AddNoteState) then) =
      __$$_AddNoteStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? noteTitle, String noteText, Color? noteColor, List<Todo> todos});
}

/// @nodoc
class __$$_AddNoteStateCopyWithImpl<$Res>
    extends _$NoteFormStateCopyWithImpl<$Res, _$_AddNoteState>
    implements _$$_AddNoteStateCopyWith<$Res> {
  __$$_AddNoteStateCopyWithImpl(
      _$_AddNoteState _value, $Res Function(_$_AddNoteState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noteTitle = freezed,
    Object? noteText = null,
    Object? noteColor = freezed,
    Object? todos = null,
  }) {
    return _then(_$_AddNoteState(
      noteTitle: freezed == noteTitle
          ? _value.noteTitle
          : noteTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      noteText: null == noteText
          ? _value.noteText
          : noteText // ignore: cast_nullable_to_non_nullable
              as String,
      noteColor: freezed == noteColor
          ? _value.noteColor
          : noteColor // ignore: cast_nullable_to_non_nullable
              as Color?,
      todos: null == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ));
  }
}

/// @nodoc

class _$_AddNoteState implements _AddNoteState {
  const _$_AddNoteState(
      {this.noteTitle,
      required this.noteText,
      this.noteColor,
      required final List<Todo> todos})
      : _todos = todos;

  @override
  final String? noteTitle;
  @override
  final String noteText;
  @override
  final Color? noteColor;
  final List<Todo> _todos;
  @override
  List<Todo> get todos {
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  String toString() {
    return 'NoteFormState(noteTitle: $noteTitle, noteText: $noteText, noteColor: $noteColor, todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddNoteState &&
            (identical(other.noteTitle, noteTitle) ||
                other.noteTitle == noteTitle) &&
            (identical(other.noteText, noteText) ||
                other.noteText == noteText) &&
            (identical(other.noteColor, noteColor) ||
                other.noteColor == noteColor) &&
            const DeepCollectionEquality().equals(other._todos, _todos));
  }

  @override
  int get hashCode => Object.hash(runtimeType, noteTitle, noteText, noteColor,
      const DeepCollectionEquality().hash(_todos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddNoteStateCopyWith<_$_AddNoteState> get copyWith =>
      __$$_AddNoteStateCopyWithImpl<_$_AddNoteState>(this, _$identity);
}

abstract class _AddNoteState implements NoteFormState {
  const factory _AddNoteState(
      {final String? noteTitle,
      required final String noteText,
      final Color? noteColor,
      required final List<Todo> todos}) = _$_AddNoteState;

  @override
  String? get noteTitle;
  @override
  String get noteText;
  @override
  Color? get noteColor;
  @override
  List<Todo> get todos;
  @override
  @JsonKey(ignore: true)
  _$$_AddNoteStateCopyWith<_$_AddNoteState> get copyWith =>
      throw _privateConstructorUsedError;
}
