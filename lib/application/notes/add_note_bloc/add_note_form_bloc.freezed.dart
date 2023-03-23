// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_note_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddNoteFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String noteText) changeText,
    required TResult Function(Color newColor) changeColor,
    required TResult Function(Todo todo) addTodo,
    required TResult Function(Todo todo, int index) changeTodo,
    required TResult Function(Note note) save,
    required TResult Function(Note note) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String noteText)? changeText,
    TResult? Function(Color newColor)? changeColor,
    TResult? Function(Todo todo)? addTodo,
    TResult? Function(Todo todo, int index)? changeTodo,
    TResult? Function(Note note)? save,
    TResult? Function(Note note)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String noteText)? changeText,
    TResult Function(Color newColor)? changeColor,
    TResult Function(Todo todo)? addTodo,
    TResult Function(Todo todo, int index)? changeTodo,
    TResult Function(Note note)? save,
    TResult Function(Note note)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextChanged value) changeText,
    required TResult Function(ColorChanged value) changeColor,
    required TResult Function(TodoAdded value) addTodo,
    required TResult Function(TodoChanged value) changeTodo,
    required TResult Function(NoteSaved value) save,
    required TResult Function(NoteUpdated value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextChanged value)? changeText,
    TResult? Function(ColorChanged value)? changeColor,
    TResult? Function(TodoAdded value)? addTodo,
    TResult? Function(TodoChanged value)? changeTodo,
    TResult? Function(NoteSaved value)? save,
    TResult? Function(NoteUpdated value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextChanged value)? changeText,
    TResult Function(ColorChanged value)? changeColor,
    TResult Function(TodoAdded value)? addTodo,
    TResult Function(TodoChanged value)? changeTodo,
    TResult Function(NoteSaved value)? save,
    TResult Function(NoteUpdated value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddNoteFormEventCopyWith<$Res> {
  factory $AddNoteFormEventCopyWith(
          AddNoteFormEvent value, $Res Function(AddNoteFormEvent) then) =
      _$AddNoteFormEventCopyWithImpl<$Res, AddNoteFormEvent>;
}

/// @nodoc
class _$AddNoteFormEventCopyWithImpl<$Res, $Val extends AddNoteFormEvent>
    implements $AddNoteFormEventCopyWith<$Res> {
  _$AddNoteFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TextChangedCopyWith<$Res> {
  factory _$$TextChangedCopyWith(
          _$TextChanged value, $Res Function(_$TextChanged) then) =
      __$$TextChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String noteText});
}

/// @nodoc
class __$$TextChangedCopyWithImpl<$Res>
    extends _$AddNoteFormEventCopyWithImpl<$Res, _$TextChanged>
    implements _$$TextChangedCopyWith<$Res> {
  __$$TextChangedCopyWithImpl(
      _$TextChanged _value, $Res Function(_$TextChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noteText = null,
  }) {
    return _then(_$TextChanged(
      null == noteText
          ? _value.noteText
          : noteText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TextChanged implements TextChanged {
  const _$TextChanged(this.noteText);

  @override
  final String noteText;

  @override
  String toString() {
    return 'AddNoteFormEvent.changeText(noteText: $noteText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextChanged &&
            (identical(other.noteText, noteText) ||
                other.noteText == noteText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, noteText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TextChangedCopyWith<_$TextChanged> get copyWith =>
      __$$TextChangedCopyWithImpl<_$TextChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String noteText) changeText,
    required TResult Function(Color newColor) changeColor,
    required TResult Function(Todo todo) addTodo,
    required TResult Function(Todo todo, int index) changeTodo,
    required TResult Function(Note note) save,
    required TResult Function(Note note) update,
  }) {
    return changeText(noteText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String noteText)? changeText,
    TResult? Function(Color newColor)? changeColor,
    TResult? Function(Todo todo)? addTodo,
    TResult? Function(Todo todo, int index)? changeTodo,
    TResult? Function(Note note)? save,
    TResult? Function(Note note)? update,
  }) {
    return changeText?.call(noteText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String noteText)? changeText,
    TResult Function(Color newColor)? changeColor,
    TResult Function(Todo todo)? addTodo,
    TResult Function(Todo todo, int index)? changeTodo,
    TResult Function(Note note)? save,
    TResult Function(Note note)? update,
    required TResult orElse(),
  }) {
    if (changeText != null) {
      return changeText(noteText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextChanged value) changeText,
    required TResult Function(ColorChanged value) changeColor,
    required TResult Function(TodoAdded value) addTodo,
    required TResult Function(TodoChanged value) changeTodo,
    required TResult Function(NoteSaved value) save,
    required TResult Function(NoteUpdated value) update,
  }) {
    return changeText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextChanged value)? changeText,
    TResult? Function(ColorChanged value)? changeColor,
    TResult? Function(TodoAdded value)? addTodo,
    TResult? Function(TodoChanged value)? changeTodo,
    TResult? Function(NoteSaved value)? save,
    TResult? Function(NoteUpdated value)? update,
  }) {
    return changeText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextChanged value)? changeText,
    TResult Function(ColorChanged value)? changeColor,
    TResult Function(TodoAdded value)? addTodo,
    TResult Function(TodoChanged value)? changeTodo,
    TResult Function(NoteSaved value)? save,
    TResult Function(NoteUpdated value)? update,
    required TResult orElse(),
  }) {
    if (changeText != null) {
      return changeText(this);
    }
    return orElse();
  }
}

abstract class TextChanged implements AddNoteFormEvent {
  const factory TextChanged(final String noteText) = _$TextChanged;

  String get noteText;
  @JsonKey(ignore: true)
  _$$TextChangedCopyWith<_$TextChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ColorChangedCopyWith<$Res> {
  factory _$$ColorChangedCopyWith(
          _$ColorChanged value, $Res Function(_$ColorChanged) then) =
      __$$ColorChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({Color newColor});
}

/// @nodoc
class __$$ColorChangedCopyWithImpl<$Res>
    extends _$AddNoteFormEventCopyWithImpl<$Res, _$ColorChanged>
    implements _$$ColorChangedCopyWith<$Res> {
  __$$ColorChangedCopyWithImpl(
      _$ColorChanged _value, $Res Function(_$ColorChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newColor = null,
  }) {
    return _then(_$ColorChanged(
      null == newColor
          ? _value.newColor
          : newColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$ColorChanged implements ColorChanged {
  const _$ColorChanged(this.newColor);

  @override
  final Color newColor;

  @override
  String toString() {
    return 'AddNoteFormEvent.changeColor(newColor: $newColor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColorChanged &&
            (identical(other.newColor, newColor) ||
                other.newColor == newColor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newColor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ColorChangedCopyWith<_$ColorChanged> get copyWith =>
      __$$ColorChangedCopyWithImpl<_$ColorChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String noteText) changeText,
    required TResult Function(Color newColor) changeColor,
    required TResult Function(Todo todo) addTodo,
    required TResult Function(Todo todo, int index) changeTodo,
    required TResult Function(Note note) save,
    required TResult Function(Note note) update,
  }) {
    return changeColor(newColor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String noteText)? changeText,
    TResult? Function(Color newColor)? changeColor,
    TResult? Function(Todo todo)? addTodo,
    TResult? Function(Todo todo, int index)? changeTodo,
    TResult? Function(Note note)? save,
    TResult? Function(Note note)? update,
  }) {
    return changeColor?.call(newColor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String noteText)? changeText,
    TResult Function(Color newColor)? changeColor,
    TResult Function(Todo todo)? addTodo,
    TResult Function(Todo todo, int index)? changeTodo,
    TResult Function(Note note)? save,
    TResult Function(Note note)? update,
    required TResult orElse(),
  }) {
    if (changeColor != null) {
      return changeColor(newColor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextChanged value) changeText,
    required TResult Function(ColorChanged value) changeColor,
    required TResult Function(TodoAdded value) addTodo,
    required TResult Function(TodoChanged value) changeTodo,
    required TResult Function(NoteSaved value) save,
    required TResult Function(NoteUpdated value) update,
  }) {
    return changeColor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextChanged value)? changeText,
    TResult? Function(ColorChanged value)? changeColor,
    TResult? Function(TodoAdded value)? addTodo,
    TResult? Function(TodoChanged value)? changeTodo,
    TResult? Function(NoteSaved value)? save,
    TResult? Function(NoteUpdated value)? update,
  }) {
    return changeColor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextChanged value)? changeText,
    TResult Function(ColorChanged value)? changeColor,
    TResult Function(TodoAdded value)? addTodo,
    TResult Function(TodoChanged value)? changeTodo,
    TResult Function(NoteSaved value)? save,
    TResult Function(NoteUpdated value)? update,
    required TResult orElse(),
  }) {
    if (changeColor != null) {
      return changeColor(this);
    }
    return orElse();
  }
}

abstract class ColorChanged implements AddNoteFormEvent {
  const factory ColorChanged(final Color newColor) = _$ColorChanged;

  Color get newColor;
  @JsonKey(ignore: true)
  _$$ColorChangedCopyWith<_$ColorChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TodoAddedCopyWith<$Res> {
  factory _$$TodoAddedCopyWith(
          _$TodoAdded value, $Res Function(_$TodoAdded) then) =
      __$$TodoAddedCopyWithImpl<$Res>;
  @useResult
  $Res call({Todo todo});

  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class __$$TodoAddedCopyWithImpl<$Res>
    extends _$AddNoteFormEventCopyWithImpl<$Res, _$TodoAdded>
    implements _$$TodoAddedCopyWith<$Res> {
  __$$TodoAddedCopyWithImpl(
      _$TodoAdded _value, $Res Function(_$TodoAdded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todo = null,
  }) {
    return _then(_$TodoAdded(
      null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TodoCopyWith<$Res> get todo {
    return $TodoCopyWith<$Res>(_value.todo, (value) {
      return _then(_value.copyWith(todo: value));
    });
  }
}

/// @nodoc

class _$TodoAdded implements TodoAdded {
  const _$TodoAdded(this.todo);

  @override
  final Todo todo;

  @override
  String toString() {
    return 'AddNoteFormEvent.addTodo(todo: $todo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoAdded &&
            (identical(other.todo, todo) || other.todo == todo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoAddedCopyWith<_$TodoAdded> get copyWith =>
      __$$TodoAddedCopyWithImpl<_$TodoAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String noteText) changeText,
    required TResult Function(Color newColor) changeColor,
    required TResult Function(Todo todo) addTodo,
    required TResult Function(Todo todo, int index) changeTodo,
    required TResult Function(Note note) save,
    required TResult Function(Note note) update,
  }) {
    return addTodo(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String noteText)? changeText,
    TResult? Function(Color newColor)? changeColor,
    TResult? Function(Todo todo)? addTodo,
    TResult? Function(Todo todo, int index)? changeTodo,
    TResult? Function(Note note)? save,
    TResult? Function(Note note)? update,
  }) {
    return addTodo?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String noteText)? changeText,
    TResult Function(Color newColor)? changeColor,
    TResult Function(Todo todo)? addTodo,
    TResult Function(Todo todo, int index)? changeTodo,
    TResult Function(Note note)? save,
    TResult Function(Note note)? update,
    required TResult orElse(),
  }) {
    if (addTodo != null) {
      return addTodo(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextChanged value) changeText,
    required TResult Function(ColorChanged value) changeColor,
    required TResult Function(TodoAdded value) addTodo,
    required TResult Function(TodoChanged value) changeTodo,
    required TResult Function(NoteSaved value) save,
    required TResult Function(NoteUpdated value) update,
  }) {
    return addTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextChanged value)? changeText,
    TResult? Function(ColorChanged value)? changeColor,
    TResult? Function(TodoAdded value)? addTodo,
    TResult? Function(TodoChanged value)? changeTodo,
    TResult? Function(NoteSaved value)? save,
    TResult? Function(NoteUpdated value)? update,
  }) {
    return addTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextChanged value)? changeText,
    TResult Function(ColorChanged value)? changeColor,
    TResult Function(TodoAdded value)? addTodo,
    TResult Function(TodoChanged value)? changeTodo,
    TResult Function(NoteSaved value)? save,
    TResult Function(NoteUpdated value)? update,
    required TResult orElse(),
  }) {
    if (addTodo != null) {
      return addTodo(this);
    }
    return orElse();
  }
}

abstract class TodoAdded implements AddNoteFormEvent {
  const factory TodoAdded(final Todo todo) = _$TodoAdded;

  Todo get todo;
  @JsonKey(ignore: true)
  _$$TodoAddedCopyWith<_$TodoAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TodoChangedCopyWith<$Res> {
  factory _$$TodoChangedCopyWith(
          _$TodoChanged value, $Res Function(_$TodoChanged) then) =
      __$$TodoChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({Todo todo, int index});

  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class __$$TodoChangedCopyWithImpl<$Res>
    extends _$AddNoteFormEventCopyWithImpl<$Res, _$TodoChanged>
    implements _$$TodoChangedCopyWith<$Res> {
  __$$TodoChangedCopyWithImpl(
      _$TodoChanged _value, $Res Function(_$TodoChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todo = null,
    Object? index = null,
  }) {
    return _then(_$TodoChanged(
      null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TodoCopyWith<$Res> get todo {
    return $TodoCopyWith<$Res>(_value.todo, (value) {
      return _then(_value.copyWith(todo: value));
    });
  }
}

/// @nodoc

class _$TodoChanged implements TodoChanged {
  const _$TodoChanged(this.todo, this.index);

  @override
  final Todo todo;
  @override
  final int index;

  @override
  String toString() {
    return 'AddNoteFormEvent.changeTodo(todo: $todo, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoChanged &&
            (identical(other.todo, todo) || other.todo == todo) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todo, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoChangedCopyWith<_$TodoChanged> get copyWith =>
      __$$TodoChangedCopyWithImpl<_$TodoChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String noteText) changeText,
    required TResult Function(Color newColor) changeColor,
    required TResult Function(Todo todo) addTodo,
    required TResult Function(Todo todo, int index) changeTodo,
    required TResult Function(Note note) save,
    required TResult Function(Note note) update,
  }) {
    return changeTodo(todo, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String noteText)? changeText,
    TResult? Function(Color newColor)? changeColor,
    TResult? Function(Todo todo)? addTodo,
    TResult? Function(Todo todo, int index)? changeTodo,
    TResult? Function(Note note)? save,
    TResult? Function(Note note)? update,
  }) {
    return changeTodo?.call(todo, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String noteText)? changeText,
    TResult Function(Color newColor)? changeColor,
    TResult Function(Todo todo)? addTodo,
    TResult Function(Todo todo, int index)? changeTodo,
    TResult Function(Note note)? save,
    TResult Function(Note note)? update,
    required TResult orElse(),
  }) {
    if (changeTodo != null) {
      return changeTodo(todo, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextChanged value) changeText,
    required TResult Function(ColorChanged value) changeColor,
    required TResult Function(TodoAdded value) addTodo,
    required TResult Function(TodoChanged value) changeTodo,
    required TResult Function(NoteSaved value) save,
    required TResult Function(NoteUpdated value) update,
  }) {
    return changeTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextChanged value)? changeText,
    TResult? Function(ColorChanged value)? changeColor,
    TResult? Function(TodoAdded value)? addTodo,
    TResult? Function(TodoChanged value)? changeTodo,
    TResult? Function(NoteSaved value)? save,
    TResult? Function(NoteUpdated value)? update,
  }) {
    return changeTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextChanged value)? changeText,
    TResult Function(ColorChanged value)? changeColor,
    TResult Function(TodoAdded value)? addTodo,
    TResult Function(TodoChanged value)? changeTodo,
    TResult Function(NoteSaved value)? save,
    TResult Function(NoteUpdated value)? update,
    required TResult orElse(),
  }) {
    if (changeTodo != null) {
      return changeTodo(this);
    }
    return orElse();
  }
}

abstract class TodoChanged implements AddNoteFormEvent {
  const factory TodoChanged(final Todo todo, final int index) = _$TodoChanged;

  Todo get todo;
  int get index;
  @JsonKey(ignore: true)
  _$$TodoChangedCopyWith<_$TodoChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoteSavedCopyWith<$Res> {
  factory _$$NoteSavedCopyWith(
          _$NoteSaved value, $Res Function(_$NoteSaved) then) =
      __$$NoteSavedCopyWithImpl<$Res>;
  @useResult
  $Res call({Note note});

  $NoteCopyWith<$Res> get note;
}

/// @nodoc
class __$$NoteSavedCopyWithImpl<$Res>
    extends _$AddNoteFormEventCopyWithImpl<$Res, _$NoteSaved>
    implements _$$NoteSavedCopyWith<$Res> {
  __$$NoteSavedCopyWithImpl(
      _$NoteSaved _value, $Res Function(_$NoteSaved) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = null,
  }) {
    return _then(_$NoteSaved(
      null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NoteCopyWith<$Res> get note {
    return $NoteCopyWith<$Res>(_value.note, (value) {
      return _then(_value.copyWith(note: value));
    });
  }
}

/// @nodoc

class _$NoteSaved implements NoteSaved {
  const _$NoteSaved(this.note);

  @override
  final Note note;

  @override
  String toString() {
    return 'AddNoteFormEvent.save(note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteSaved &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode => Object.hash(runtimeType, note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteSavedCopyWith<_$NoteSaved> get copyWith =>
      __$$NoteSavedCopyWithImpl<_$NoteSaved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String noteText) changeText,
    required TResult Function(Color newColor) changeColor,
    required TResult Function(Todo todo) addTodo,
    required TResult Function(Todo todo, int index) changeTodo,
    required TResult Function(Note note) save,
    required TResult Function(Note note) update,
  }) {
    return save(note);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String noteText)? changeText,
    TResult? Function(Color newColor)? changeColor,
    TResult? Function(Todo todo)? addTodo,
    TResult? Function(Todo todo, int index)? changeTodo,
    TResult? Function(Note note)? save,
    TResult? Function(Note note)? update,
  }) {
    return save?.call(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String noteText)? changeText,
    TResult Function(Color newColor)? changeColor,
    TResult Function(Todo todo)? addTodo,
    TResult Function(Todo todo, int index)? changeTodo,
    TResult Function(Note note)? save,
    TResult Function(Note note)? update,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextChanged value) changeText,
    required TResult Function(ColorChanged value) changeColor,
    required TResult Function(TodoAdded value) addTodo,
    required TResult Function(TodoChanged value) changeTodo,
    required TResult Function(NoteSaved value) save,
    required TResult Function(NoteUpdated value) update,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextChanged value)? changeText,
    TResult? Function(ColorChanged value)? changeColor,
    TResult? Function(TodoAdded value)? addTodo,
    TResult? Function(TodoChanged value)? changeTodo,
    TResult? Function(NoteSaved value)? save,
    TResult? Function(NoteUpdated value)? update,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextChanged value)? changeText,
    TResult Function(ColorChanged value)? changeColor,
    TResult Function(TodoAdded value)? addTodo,
    TResult Function(TodoChanged value)? changeTodo,
    TResult Function(NoteSaved value)? save,
    TResult Function(NoteUpdated value)? update,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class NoteSaved implements AddNoteFormEvent {
  const factory NoteSaved(final Note note) = _$NoteSaved;

  Note get note;
  @JsonKey(ignore: true)
  _$$NoteSavedCopyWith<_$NoteSaved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoteUpdatedCopyWith<$Res> {
  factory _$$NoteUpdatedCopyWith(
          _$NoteUpdated value, $Res Function(_$NoteUpdated) then) =
      __$$NoteUpdatedCopyWithImpl<$Res>;
  @useResult
  $Res call({Note note});

  $NoteCopyWith<$Res> get note;
}

/// @nodoc
class __$$NoteUpdatedCopyWithImpl<$Res>
    extends _$AddNoteFormEventCopyWithImpl<$Res, _$NoteUpdated>
    implements _$$NoteUpdatedCopyWith<$Res> {
  __$$NoteUpdatedCopyWithImpl(
      _$NoteUpdated _value, $Res Function(_$NoteUpdated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = null,
  }) {
    return _then(_$NoteUpdated(
      null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NoteCopyWith<$Res> get note {
    return $NoteCopyWith<$Res>(_value.note, (value) {
      return _then(_value.copyWith(note: value));
    });
  }
}

/// @nodoc

class _$NoteUpdated implements NoteUpdated {
  const _$NoteUpdated(this.note);

  @override
  final Note note;

  @override
  String toString() {
    return 'AddNoteFormEvent.update(note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteUpdated &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode => Object.hash(runtimeType, note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteUpdatedCopyWith<_$NoteUpdated> get copyWith =>
      __$$NoteUpdatedCopyWithImpl<_$NoteUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String noteText) changeText,
    required TResult Function(Color newColor) changeColor,
    required TResult Function(Todo todo) addTodo,
    required TResult Function(Todo todo, int index) changeTodo,
    required TResult Function(Note note) save,
    required TResult Function(Note note) update,
  }) {
    return update(note);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String noteText)? changeText,
    TResult? Function(Color newColor)? changeColor,
    TResult? Function(Todo todo)? addTodo,
    TResult? Function(Todo todo, int index)? changeTodo,
    TResult? Function(Note note)? save,
    TResult? Function(Note note)? update,
  }) {
    return update?.call(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String noteText)? changeText,
    TResult Function(Color newColor)? changeColor,
    TResult Function(Todo todo)? addTodo,
    TResult Function(Todo todo, int index)? changeTodo,
    TResult Function(Note note)? save,
    TResult Function(Note note)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextChanged value) changeText,
    required TResult Function(ColorChanged value) changeColor,
    required TResult Function(TodoAdded value) addTodo,
    required TResult Function(TodoChanged value) changeTodo,
    required TResult Function(NoteSaved value) save,
    required TResult Function(NoteUpdated value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextChanged value)? changeText,
    TResult? Function(ColorChanged value)? changeColor,
    TResult? Function(TodoAdded value)? addTodo,
    TResult? Function(TodoChanged value)? changeTodo,
    TResult? Function(NoteSaved value)? save,
    TResult? Function(NoteUpdated value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextChanged value)? changeText,
    TResult Function(ColorChanged value)? changeColor,
    TResult Function(TodoAdded value)? addTodo,
    TResult Function(TodoChanged value)? changeTodo,
    TResult Function(NoteSaved value)? save,
    TResult Function(NoteUpdated value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class NoteUpdated implements AddNoteFormEvent {
  const factory NoteUpdated(final Note note) = _$NoteUpdated;

  Note get note;
  @JsonKey(ignore: true)
  _$$NoteUpdatedCopyWith<_$NoteUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddNoteFormState {
//required Note note,
  String get noteText => throw _privateConstructorUsedError;
  Color get noteColor => throw _privateConstructorUsedError;
  List<Todo> get todos => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  NoteFailure? get noteFailure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddNoteFormStateCopyWith<AddNoteFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddNoteFormStateCopyWith<$Res> {
  factory $AddNoteFormStateCopyWith(
          AddNoteFormState value, $Res Function(AddNoteFormState) then) =
      _$AddNoteFormStateCopyWithImpl<$Res, AddNoteFormState>;
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
class _$AddNoteFormStateCopyWithImpl<$Res, $Val extends AddNoteFormState>
    implements $AddNoteFormStateCopyWith<$Res> {
  _$AddNoteFormStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_AddNoteFormStateCopyWith<$Res>
    implements $AddNoteFormStateCopyWith<$Res> {
  factory _$$_AddNoteFormStateCopyWith(
          _$_AddNoteFormState value, $Res Function(_$_AddNoteFormState) then) =
      __$$_AddNoteFormStateCopyWithImpl<$Res>;
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
class __$$_AddNoteFormStateCopyWithImpl<$Res>
    extends _$AddNoteFormStateCopyWithImpl<$Res, _$_AddNoteFormState>
    implements _$$_AddNoteFormStateCopyWith<$Res> {
  __$$_AddNoteFormStateCopyWithImpl(
      _$_AddNoteFormState _value, $Res Function(_$_AddNoteFormState) _then)
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
    return _then(_$_AddNoteFormState(
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

class _$_AddNoteFormState implements _AddNoteFormState {
  const _$_AddNoteFormState(
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
    return 'AddNoteFormState(noteText: $noteText, noteColor: $noteColor, todos: $todos, isSubmitting: $isSubmitting, showErrorMessages: $showErrorMessages, noteFailure: $noteFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddNoteFormState &&
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
  _$$_AddNoteFormStateCopyWith<_$_AddNoteFormState> get copyWith =>
      __$$_AddNoteFormStateCopyWithImpl<_$_AddNoteFormState>(this, _$identity);
}

abstract class _AddNoteFormState implements AddNoteFormState {
  const factory _AddNoteFormState(
      {required final String noteText,
      required final Color noteColor,
      required final List<Todo> todos,
      required final bool isSubmitting,
      required final bool showErrorMessages,
      required final NoteFailure? noteFailure}) = _$_AddNoteFormState;

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
  _$$_AddNoteFormStateCopyWith<_$_AddNoteFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
