// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllNotes,
    required TResult Function(Note note) deleteNote,
    required TResult Function(NoteFormState noteFormState) addNote,
    required TResult Function(Note note) editNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllNotes,
    TResult? Function(Note note)? deleteNote,
    TResult? Function(NoteFormState noteFormState)? addNote,
    TResult? Function(Note note)? editNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllNotes,
    TResult Function(Note note)? deleteNote,
    TResult Function(NoteFormState noteFormState)? addNote,
    TResult Function(Note note)? editNote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllNotesEvent value) getAllNotes,
    required TResult Function(_DeleteNoteEvent value) deleteNote,
    required TResult Function(_AddNoteEvent value) addNote,
    required TResult Function(_EditNoteEvent value) editNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllNotesEvent value)? getAllNotes,
    TResult? Function(_DeleteNoteEvent value)? deleteNote,
    TResult? Function(_AddNoteEvent value)? addNote,
    TResult? Function(_EditNoteEvent value)? editNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllNotesEvent value)? getAllNotes,
    TResult Function(_DeleteNoteEvent value)? deleteNote,
    TResult Function(_AddNoteEvent value)? addNote,
    TResult Function(_EditNoteEvent value)? editNote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesEventCopyWith<$Res> {
  factory $NotesEventCopyWith(
          NotesEvent value, $Res Function(NotesEvent) then) =
      _$NotesEventCopyWithImpl<$Res, NotesEvent>;
}

/// @nodoc
class _$NotesEventCopyWithImpl<$Res, $Val extends NotesEvent>
    implements $NotesEventCopyWith<$Res> {
  _$NotesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetAllNotesEventCopyWith<$Res> {
  factory _$$_GetAllNotesEventCopyWith(
          _$_GetAllNotesEvent value, $Res Function(_$_GetAllNotesEvent) then) =
      __$$_GetAllNotesEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetAllNotesEventCopyWithImpl<$Res>
    extends _$NotesEventCopyWithImpl<$Res, _$_GetAllNotesEvent>
    implements _$$_GetAllNotesEventCopyWith<$Res> {
  __$$_GetAllNotesEventCopyWithImpl(
      _$_GetAllNotesEvent _value, $Res Function(_$_GetAllNotesEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetAllNotesEvent implements _GetAllNotesEvent {
  const _$_GetAllNotesEvent();

  @override
  String toString() {
    return 'NotesEvent.getAllNotes()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetAllNotesEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllNotes,
    required TResult Function(Note note) deleteNote,
    required TResult Function(NoteFormState noteFormState) addNote,
    required TResult Function(Note note) editNote,
  }) {
    return getAllNotes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllNotes,
    TResult? Function(Note note)? deleteNote,
    TResult? Function(NoteFormState noteFormState)? addNote,
    TResult? Function(Note note)? editNote,
  }) {
    return getAllNotes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllNotes,
    TResult Function(Note note)? deleteNote,
    TResult Function(NoteFormState noteFormState)? addNote,
    TResult Function(Note note)? editNote,
    required TResult orElse(),
  }) {
    if (getAllNotes != null) {
      return getAllNotes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllNotesEvent value) getAllNotes,
    required TResult Function(_DeleteNoteEvent value) deleteNote,
    required TResult Function(_AddNoteEvent value) addNote,
    required TResult Function(_EditNoteEvent value) editNote,
  }) {
    return getAllNotes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllNotesEvent value)? getAllNotes,
    TResult? Function(_DeleteNoteEvent value)? deleteNote,
    TResult? Function(_AddNoteEvent value)? addNote,
    TResult? Function(_EditNoteEvent value)? editNote,
  }) {
    return getAllNotes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllNotesEvent value)? getAllNotes,
    TResult Function(_DeleteNoteEvent value)? deleteNote,
    TResult Function(_AddNoteEvent value)? addNote,
    TResult Function(_EditNoteEvent value)? editNote,
    required TResult orElse(),
  }) {
    if (getAllNotes != null) {
      return getAllNotes(this);
    }
    return orElse();
  }
}

abstract class _GetAllNotesEvent implements NotesEvent {
  const factory _GetAllNotesEvent() = _$_GetAllNotesEvent;
}

/// @nodoc
abstract class _$$_DeleteNoteEventCopyWith<$Res> {
  factory _$$_DeleteNoteEventCopyWith(
          _$_DeleteNoteEvent value, $Res Function(_$_DeleteNoteEvent) then) =
      __$$_DeleteNoteEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Note note});

  $NoteCopyWith<$Res> get note;
}

/// @nodoc
class __$$_DeleteNoteEventCopyWithImpl<$Res>
    extends _$NotesEventCopyWithImpl<$Res, _$_DeleteNoteEvent>
    implements _$$_DeleteNoteEventCopyWith<$Res> {
  __$$_DeleteNoteEventCopyWithImpl(
      _$_DeleteNoteEvent _value, $Res Function(_$_DeleteNoteEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = null,
  }) {
    return _then(_$_DeleteNoteEvent(
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

class _$_DeleteNoteEvent implements _DeleteNoteEvent {
  const _$_DeleteNoteEvent(this.note);

  @override
  final Note note;

  @override
  String toString() {
    return 'NotesEvent.deleteNote(note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteNoteEvent &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode => Object.hash(runtimeType, note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteNoteEventCopyWith<_$_DeleteNoteEvent> get copyWith =>
      __$$_DeleteNoteEventCopyWithImpl<_$_DeleteNoteEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllNotes,
    required TResult Function(Note note) deleteNote,
    required TResult Function(NoteFormState noteFormState) addNote,
    required TResult Function(Note note) editNote,
  }) {
    return deleteNote(note);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllNotes,
    TResult? Function(Note note)? deleteNote,
    TResult? Function(NoteFormState noteFormState)? addNote,
    TResult? Function(Note note)? editNote,
  }) {
    return deleteNote?.call(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllNotes,
    TResult Function(Note note)? deleteNote,
    TResult Function(NoteFormState noteFormState)? addNote,
    TResult Function(Note note)? editNote,
    required TResult orElse(),
  }) {
    if (deleteNote != null) {
      return deleteNote(note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllNotesEvent value) getAllNotes,
    required TResult Function(_DeleteNoteEvent value) deleteNote,
    required TResult Function(_AddNoteEvent value) addNote,
    required TResult Function(_EditNoteEvent value) editNote,
  }) {
    return deleteNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllNotesEvent value)? getAllNotes,
    TResult? Function(_DeleteNoteEvent value)? deleteNote,
    TResult? Function(_AddNoteEvent value)? addNote,
    TResult? Function(_EditNoteEvent value)? editNote,
  }) {
    return deleteNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllNotesEvent value)? getAllNotes,
    TResult Function(_DeleteNoteEvent value)? deleteNote,
    TResult Function(_AddNoteEvent value)? addNote,
    TResult Function(_EditNoteEvent value)? editNote,
    required TResult orElse(),
  }) {
    if (deleteNote != null) {
      return deleteNote(this);
    }
    return orElse();
  }
}

abstract class _DeleteNoteEvent implements NotesEvent {
  const factory _DeleteNoteEvent(final Note note) = _$_DeleteNoteEvent;

  Note get note;
  @JsonKey(ignore: true)
  _$$_DeleteNoteEventCopyWith<_$_DeleteNoteEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddNoteEventCopyWith<$Res> {
  factory _$$_AddNoteEventCopyWith(
          _$_AddNoteEvent value, $Res Function(_$_AddNoteEvent) then) =
      __$$_AddNoteEventCopyWithImpl<$Res>;
  @useResult
  $Res call({NoteFormState noteFormState});

  $NoteFormStateCopyWith<$Res> get noteFormState;
}

/// @nodoc
class __$$_AddNoteEventCopyWithImpl<$Res>
    extends _$NotesEventCopyWithImpl<$Res, _$_AddNoteEvent>
    implements _$$_AddNoteEventCopyWith<$Res> {
  __$$_AddNoteEventCopyWithImpl(
      _$_AddNoteEvent _value, $Res Function(_$_AddNoteEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noteFormState = null,
  }) {
    return _then(_$_AddNoteEvent(
      null == noteFormState
          ? _value.noteFormState
          : noteFormState // ignore: cast_nullable_to_non_nullable
              as NoteFormState,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NoteFormStateCopyWith<$Res> get noteFormState {
    return $NoteFormStateCopyWith<$Res>(_value.noteFormState, (value) {
      return _then(_value.copyWith(noteFormState: value));
    });
  }
}

/// @nodoc

class _$_AddNoteEvent implements _AddNoteEvent {
  const _$_AddNoteEvent(this.noteFormState);

  @override
  final NoteFormState noteFormState;

  @override
  String toString() {
    return 'NotesEvent.addNote(noteFormState: $noteFormState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddNoteEvent &&
            (identical(other.noteFormState, noteFormState) ||
                other.noteFormState == noteFormState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, noteFormState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddNoteEventCopyWith<_$_AddNoteEvent> get copyWith =>
      __$$_AddNoteEventCopyWithImpl<_$_AddNoteEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllNotes,
    required TResult Function(Note note) deleteNote,
    required TResult Function(NoteFormState noteFormState) addNote,
    required TResult Function(Note note) editNote,
  }) {
    return addNote(noteFormState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllNotes,
    TResult? Function(Note note)? deleteNote,
    TResult? Function(NoteFormState noteFormState)? addNote,
    TResult? Function(Note note)? editNote,
  }) {
    return addNote?.call(noteFormState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllNotes,
    TResult Function(Note note)? deleteNote,
    TResult Function(NoteFormState noteFormState)? addNote,
    TResult Function(Note note)? editNote,
    required TResult orElse(),
  }) {
    if (addNote != null) {
      return addNote(noteFormState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllNotesEvent value) getAllNotes,
    required TResult Function(_DeleteNoteEvent value) deleteNote,
    required TResult Function(_AddNoteEvent value) addNote,
    required TResult Function(_EditNoteEvent value) editNote,
  }) {
    return addNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllNotesEvent value)? getAllNotes,
    TResult? Function(_DeleteNoteEvent value)? deleteNote,
    TResult? Function(_AddNoteEvent value)? addNote,
    TResult? Function(_EditNoteEvent value)? editNote,
  }) {
    return addNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllNotesEvent value)? getAllNotes,
    TResult Function(_DeleteNoteEvent value)? deleteNote,
    TResult Function(_AddNoteEvent value)? addNote,
    TResult Function(_EditNoteEvent value)? editNote,
    required TResult orElse(),
  }) {
    if (addNote != null) {
      return addNote(this);
    }
    return orElse();
  }
}

abstract class _AddNoteEvent implements NotesEvent {
  const factory _AddNoteEvent(final NoteFormState noteFormState) =
      _$_AddNoteEvent;

  NoteFormState get noteFormState;
  @JsonKey(ignore: true)
  _$$_AddNoteEventCopyWith<_$_AddNoteEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EditNoteEventCopyWith<$Res> {
  factory _$$_EditNoteEventCopyWith(
          _$_EditNoteEvent value, $Res Function(_$_EditNoteEvent) then) =
      __$$_EditNoteEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Note note});

  $NoteCopyWith<$Res> get note;
}

/// @nodoc
class __$$_EditNoteEventCopyWithImpl<$Res>
    extends _$NotesEventCopyWithImpl<$Res, _$_EditNoteEvent>
    implements _$$_EditNoteEventCopyWith<$Res> {
  __$$_EditNoteEventCopyWithImpl(
      _$_EditNoteEvent _value, $Res Function(_$_EditNoteEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = null,
  }) {
    return _then(_$_EditNoteEvent(
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

class _$_EditNoteEvent implements _EditNoteEvent {
  const _$_EditNoteEvent(this.note);

  @override
  final Note note;

  @override
  String toString() {
    return 'NotesEvent.editNote(note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditNoteEvent &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode => Object.hash(runtimeType, note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditNoteEventCopyWith<_$_EditNoteEvent> get copyWith =>
      __$$_EditNoteEventCopyWithImpl<_$_EditNoteEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllNotes,
    required TResult Function(Note note) deleteNote,
    required TResult Function(NoteFormState noteFormState) addNote,
    required TResult Function(Note note) editNote,
  }) {
    return editNote(note);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllNotes,
    TResult? Function(Note note)? deleteNote,
    TResult? Function(NoteFormState noteFormState)? addNote,
    TResult? Function(Note note)? editNote,
  }) {
    return editNote?.call(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllNotes,
    TResult Function(Note note)? deleteNote,
    TResult Function(NoteFormState noteFormState)? addNote,
    TResult Function(Note note)? editNote,
    required TResult orElse(),
  }) {
    if (editNote != null) {
      return editNote(note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllNotesEvent value) getAllNotes,
    required TResult Function(_DeleteNoteEvent value) deleteNote,
    required TResult Function(_AddNoteEvent value) addNote,
    required TResult Function(_EditNoteEvent value) editNote,
  }) {
    return editNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllNotesEvent value)? getAllNotes,
    TResult? Function(_DeleteNoteEvent value)? deleteNote,
    TResult? Function(_AddNoteEvent value)? addNote,
    TResult? Function(_EditNoteEvent value)? editNote,
  }) {
    return editNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllNotesEvent value)? getAllNotes,
    TResult Function(_DeleteNoteEvent value)? deleteNote,
    TResult Function(_AddNoteEvent value)? addNote,
    TResult Function(_EditNoteEvent value)? editNote,
    required TResult orElse(),
  }) {
    if (editNote != null) {
      return editNote(this);
    }
    return orElse();
  }
}

abstract class _EditNoteEvent implements NotesEvent {
  const factory _EditNoteEvent(final Note note) = _$_EditNoteEvent;

  Note get note;
  @JsonKey(ignore: true)
  _$$_EditNoteEventCopyWith<_$_EditNoteEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NotesState {
  List<Note> get allNotes => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  NoteFailure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotesStateCopyWith<NotesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesStateCopyWith<$Res> {
  factory $NotesStateCopyWith(
          NotesState value, $Res Function(NotesState) then) =
      _$NotesStateCopyWithImpl<$Res, NotesState>;
  @useResult
  $Res call({List<Note> allNotes, bool isSubmitting, NoteFailure? failure});
}

/// @nodoc
class _$NotesStateCopyWithImpl<$Res, $Val extends NotesState>
    implements $NotesStateCopyWith<$Res> {
  _$NotesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allNotes = null,
    Object? isSubmitting = null,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      allNotes: null == allNotes
          ? _value.allNotes
          : allNotes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as NoteFailure?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NotesStateCopyWith<$Res>
    implements $NotesStateCopyWith<$Res> {
  factory _$$_NotesStateCopyWith(
          _$_NotesState value, $Res Function(_$_NotesState) then) =
      __$$_NotesStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Note> allNotes, bool isSubmitting, NoteFailure? failure});
}

/// @nodoc
class __$$_NotesStateCopyWithImpl<$Res>
    extends _$NotesStateCopyWithImpl<$Res, _$_NotesState>
    implements _$$_NotesStateCopyWith<$Res> {
  __$$_NotesStateCopyWithImpl(
      _$_NotesState _value, $Res Function(_$_NotesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allNotes = null,
    Object? isSubmitting = null,
    Object? failure = freezed,
  }) {
    return _then(_$_NotesState(
      allNotes: null == allNotes
          ? _value._allNotes
          : allNotes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as NoteFailure?,
    ));
  }
}

/// @nodoc

class _$_NotesState implements _NotesState {
  const _$_NotesState(
      {required final List<Note> allNotes,
      required this.isSubmitting,
      required this.failure})
      : _allNotes = allNotes;

  final List<Note> _allNotes;
  @override
  List<Note> get allNotes {
    if (_allNotes is EqualUnmodifiableListView) return _allNotes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allNotes);
  }

  @override
  final bool isSubmitting;
  @override
  final NoteFailure? failure;

  @override
  String toString() {
    return 'NotesState(allNotes: $allNotes, isSubmitting: $isSubmitting, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotesState &&
            const DeepCollectionEquality().equals(other._allNotes, _allNotes) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_allNotes), isSubmitting, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotesStateCopyWith<_$_NotesState> get copyWith =>
      __$$_NotesStateCopyWithImpl<_$_NotesState>(this, _$identity);
}

abstract class _NotesState implements NotesState {
  const factory _NotesState(
      {required final List<Note> allNotes,
      required final bool isSubmitting,
      required final NoteFailure? failure}) = _$_NotesState;

  @override
  List<Note> get allNotes;
  @override
  bool get isSubmitting;
  @override
  NoteFailure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$_NotesStateCopyWith<_$_NotesState> get copyWith =>
      throw _privateConstructorUsedError;
}
