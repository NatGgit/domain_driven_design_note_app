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
    required TResult Function() getUncompletedNotes,
    required TResult Function(Note note) deleteNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllNotes,
    TResult? Function()? getUncompletedNotes,
    TResult? Function(Note note)? deleteNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllNotes,
    TResult Function()? getUncompletedNotes,
    TResult Function(Note note)? deleteNote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllNotesEvent value) getAllNotes,
    required TResult Function(GetUncompletedNotesEvent value)
        getUncompletedNotes,
    required TResult Function(DeleteNoteEvent value) deleteNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllNotesEvent value)? getAllNotes,
    TResult? Function(GetUncompletedNotesEvent value)? getUncompletedNotes,
    TResult? Function(DeleteNoteEvent value)? deleteNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllNotesEvent value)? getAllNotes,
    TResult Function(GetUncompletedNotesEvent value)? getUncompletedNotes,
    TResult Function(DeleteNoteEvent value)? deleteNote,
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
abstract class _$$GetAllNotesEventCopyWith<$Res> {
  factory _$$GetAllNotesEventCopyWith(
          _$GetAllNotesEvent value, $Res Function(_$GetAllNotesEvent) then) =
      __$$GetAllNotesEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllNotesEventCopyWithImpl<$Res>
    extends _$NotesEventCopyWithImpl<$Res, _$GetAllNotesEvent>
    implements _$$GetAllNotesEventCopyWith<$Res> {
  __$$GetAllNotesEventCopyWithImpl(
      _$GetAllNotesEvent _value, $Res Function(_$GetAllNotesEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllNotesEvent implements GetAllNotesEvent {
  const _$GetAllNotesEvent();

  @override
  String toString() {
    return 'NotesEvent.getAllNotes()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllNotesEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllNotes,
    required TResult Function() getUncompletedNotes,
    required TResult Function(Note note) deleteNote,
  }) {
    return getAllNotes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllNotes,
    TResult? Function()? getUncompletedNotes,
    TResult? Function(Note note)? deleteNote,
  }) {
    return getAllNotes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllNotes,
    TResult Function()? getUncompletedNotes,
    TResult Function(Note note)? deleteNote,
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
    required TResult Function(GetAllNotesEvent value) getAllNotes,
    required TResult Function(GetUncompletedNotesEvent value)
        getUncompletedNotes,
    required TResult Function(DeleteNoteEvent value) deleteNote,
  }) {
    return getAllNotes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllNotesEvent value)? getAllNotes,
    TResult? Function(GetUncompletedNotesEvent value)? getUncompletedNotes,
    TResult? Function(DeleteNoteEvent value)? deleteNote,
  }) {
    return getAllNotes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllNotesEvent value)? getAllNotes,
    TResult Function(GetUncompletedNotesEvent value)? getUncompletedNotes,
    TResult Function(DeleteNoteEvent value)? deleteNote,
    required TResult orElse(),
  }) {
    if (getAllNotes != null) {
      return getAllNotes(this);
    }
    return orElse();
  }
}

abstract class GetAllNotesEvent implements NotesEvent {
  const factory GetAllNotesEvent() = _$GetAllNotesEvent;
}

/// @nodoc
abstract class _$$GetUncompletedNotesEventCopyWith<$Res> {
  factory _$$GetUncompletedNotesEventCopyWith(_$GetUncompletedNotesEvent value,
          $Res Function(_$GetUncompletedNotesEvent) then) =
      __$$GetUncompletedNotesEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUncompletedNotesEventCopyWithImpl<$Res>
    extends _$NotesEventCopyWithImpl<$Res, _$GetUncompletedNotesEvent>
    implements _$$GetUncompletedNotesEventCopyWith<$Res> {
  __$$GetUncompletedNotesEventCopyWithImpl(_$GetUncompletedNotesEvent _value,
      $Res Function(_$GetUncompletedNotesEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetUncompletedNotesEvent implements GetUncompletedNotesEvent {
  const _$GetUncompletedNotesEvent();

  @override
  String toString() {
    return 'NotesEvent.getUncompletedNotes()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUncompletedNotesEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllNotes,
    required TResult Function() getUncompletedNotes,
    required TResult Function(Note note) deleteNote,
  }) {
    return getUncompletedNotes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllNotes,
    TResult? Function()? getUncompletedNotes,
    TResult? Function(Note note)? deleteNote,
  }) {
    return getUncompletedNotes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllNotes,
    TResult Function()? getUncompletedNotes,
    TResult Function(Note note)? deleteNote,
    required TResult orElse(),
  }) {
    if (getUncompletedNotes != null) {
      return getUncompletedNotes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllNotesEvent value) getAllNotes,
    required TResult Function(GetUncompletedNotesEvent value)
        getUncompletedNotes,
    required TResult Function(DeleteNoteEvent value) deleteNote,
  }) {
    return getUncompletedNotes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllNotesEvent value)? getAllNotes,
    TResult? Function(GetUncompletedNotesEvent value)? getUncompletedNotes,
    TResult? Function(DeleteNoteEvent value)? deleteNote,
  }) {
    return getUncompletedNotes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllNotesEvent value)? getAllNotes,
    TResult Function(GetUncompletedNotesEvent value)? getUncompletedNotes,
    TResult Function(DeleteNoteEvent value)? deleteNote,
    required TResult orElse(),
  }) {
    if (getUncompletedNotes != null) {
      return getUncompletedNotes(this);
    }
    return orElse();
  }
}

abstract class GetUncompletedNotesEvent implements NotesEvent {
  const factory GetUncompletedNotesEvent() = _$GetUncompletedNotesEvent;
}

/// @nodoc
abstract class _$$DeleteNoteEventCopyWith<$Res> {
  factory _$$DeleteNoteEventCopyWith(
          _$DeleteNoteEvent value, $Res Function(_$DeleteNoteEvent) then) =
      __$$DeleteNoteEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Note note});

  $NoteCopyWith<$Res> get note;
}

/// @nodoc
class __$$DeleteNoteEventCopyWithImpl<$Res>
    extends _$NotesEventCopyWithImpl<$Res, _$DeleteNoteEvent>
    implements _$$DeleteNoteEventCopyWith<$Res> {
  __$$DeleteNoteEventCopyWithImpl(
      _$DeleteNoteEvent _value, $Res Function(_$DeleteNoteEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = null,
  }) {
    return _then(_$DeleteNoteEvent(
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

class _$DeleteNoteEvent implements DeleteNoteEvent {
  const _$DeleteNoteEvent(this.note);

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
            other is _$DeleteNoteEvent &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode => Object.hash(runtimeType, note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteNoteEventCopyWith<_$DeleteNoteEvent> get copyWith =>
      __$$DeleteNoteEventCopyWithImpl<_$DeleteNoteEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllNotes,
    required TResult Function() getUncompletedNotes,
    required TResult Function(Note note) deleteNote,
  }) {
    return deleteNote(note);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllNotes,
    TResult? Function()? getUncompletedNotes,
    TResult? Function(Note note)? deleteNote,
  }) {
    return deleteNote?.call(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllNotes,
    TResult Function()? getUncompletedNotes,
    TResult Function(Note note)? deleteNote,
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
    required TResult Function(GetAllNotesEvent value) getAllNotes,
    required TResult Function(GetUncompletedNotesEvent value)
        getUncompletedNotes,
    required TResult Function(DeleteNoteEvent value) deleteNote,
  }) {
    return deleteNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllNotesEvent value)? getAllNotes,
    TResult? Function(GetUncompletedNotesEvent value)? getUncompletedNotes,
    TResult? Function(DeleteNoteEvent value)? deleteNote,
  }) {
    return deleteNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllNotesEvent value)? getAllNotes,
    TResult Function(GetUncompletedNotesEvent value)? getUncompletedNotes,
    TResult Function(DeleteNoteEvent value)? deleteNote,
    required TResult orElse(),
  }) {
    if (deleteNote != null) {
      return deleteNote(this);
    }
    return orElse();
  }
}

abstract class DeleteNoteEvent implements NotesEvent {
  const factory DeleteNoteEvent(final Note note) = _$DeleteNoteEvent;

  Note get note;
  @JsonKey(ignore: true)
  _$$DeleteNoteEventCopyWith<_$DeleteNoteEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NotesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<Note> notes) downloadSuccess,
    required TResult Function() deleteSuccess,
    required TResult Function(NoteFailure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(List<Note> notes)? downloadSuccess,
    TResult? Function()? deleteSuccess,
    TResult? Function(NoteFailure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<Note> notes)? downloadSuccess,
    TResult Function()? deleteSuccess,
    TResult Function(NoteFailure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_DownloadSuccess value) downloadSuccess,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_Failed value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_DownloadSuccess value)? downloadSuccess,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
    TResult? Function(_Failed value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_DownloadSuccess value)? downloadSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_Failed value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesStateCopyWith<$Res> {
  factory $NotesStateCopyWith(
          NotesState value, $Res Function(NotesState) then) =
      _$NotesStateCopyWithImpl<$Res, NotesState>;
}

/// @nodoc
class _$NotesStateCopyWithImpl<$Res, $Val extends NotesState>
    implements $NotesStateCopyWith<$Res> {
  _$NotesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$NotesStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'NotesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<Note> notes) downloadSuccess,
    required TResult Function() deleteSuccess,
    required TResult Function(NoteFailure failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(List<Note> notes)? downloadSuccess,
    TResult? Function()? deleteSuccess,
    TResult? Function(NoteFailure failure)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<Note> notes)? downloadSuccess,
    TResult Function()? deleteSuccess,
    TResult Function(NoteFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_DownloadSuccess value) downloadSuccess,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_Failed value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_DownloadSuccess value)? downloadSuccess,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
    TResult? Function(_Failed value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_DownloadSuccess value)? downloadSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_Failed value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NotesState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_InProgressCopyWith<$Res> {
  factory _$$_InProgressCopyWith(
          _$_InProgress value, $Res Function(_$_InProgress) then) =
      __$$_InProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InProgressCopyWithImpl<$Res>
    extends _$NotesStateCopyWithImpl<$Res, _$_InProgress>
    implements _$$_InProgressCopyWith<$Res> {
  __$$_InProgressCopyWithImpl(
      _$_InProgress _value, $Res Function(_$_InProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InProgress implements _InProgress {
  const _$_InProgress();

  @override
  String toString() {
    return 'NotesState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<Note> notes) downloadSuccess,
    required TResult Function() deleteSuccess,
    required TResult Function(NoteFailure failure) failure,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(List<Note> notes)? downloadSuccess,
    TResult? Function()? deleteSuccess,
    TResult? Function(NoteFailure failure)? failure,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<Note> notes)? downloadSuccess,
    TResult Function()? deleteSuccess,
    TResult Function(NoteFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_DownloadSuccess value) downloadSuccess,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_Failed value) failure,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_DownloadSuccess value)? downloadSuccess,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
    TResult? Function(_Failed value)? failure,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_DownloadSuccess value)? downloadSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_Failed value)? failure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgress implements NotesState {
  const factory _InProgress() = _$_InProgress;
}

/// @nodoc
abstract class _$$_DownloadSuccessCopyWith<$Res> {
  factory _$$_DownloadSuccessCopyWith(
          _$_DownloadSuccess value, $Res Function(_$_DownloadSuccess) then) =
      __$$_DownloadSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Note> notes});
}

/// @nodoc
class __$$_DownloadSuccessCopyWithImpl<$Res>
    extends _$NotesStateCopyWithImpl<$Res, _$_DownloadSuccess>
    implements _$$_DownloadSuccessCopyWith<$Res> {
  __$$_DownloadSuccessCopyWithImpl(
      _$_DownloadSuccess _value, $Res Function(_$_DownloadSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notes = null,
  }) {
    return _then(_$_DownloadSuccess(
      null == notes
          ? _value._notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
    ));
  }
}

/// @nodoc

class _$_DownloadSuccess implements _DownloadSuccess {
  const _$_DownloadSuccess(final List<Note> notes) : _notes = notes;

  final List<Note> _notes;
  @override
  List<Note> get notes {
    if (_notes is EqualUnmodifiableListView) return _notes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notes);
  }

  @override
  String toString() {
    return 'NotesState.downloadSuccess(notes: $notes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DownloadSuccess &&
            const DeepCollectionEquality().equals(other._notes, _notes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_notes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DownloadSuccessCopyWith<_$_DownloadSuccess> get copyWith =>
      __$$_DownloadSuccessCopyWithImpl<_$_DownloadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<Note> notes) downloadSuccess,
    required TResult Function() deleteSuccess,
    required TResult Function(NoteFailure failure) failure,
  }) {
    return downloadSuccess(notes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(List<Note> notes)? downloadSuccess,
    TResult? Function()? deleteSuccess,
    TResult? Function(NoteFailure failure)? failure,
  }) {
    return downloadSuccess?.call(notes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<Note> notes)? downloadSuccess,
    TResult Function()? deleteSuccess,
    TResult Function(NoteFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (downloadSuccess != null) {
      return downloadSuccess(notes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_DownloadSuccess value) downloadSuccess,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_Failed value) failure,
  }) {
    return downloadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_DownloadSuccess value)? downloadSuccess,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
    TResult? Function(_Failed value)? failure,
  }) {
    return downloadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_DownloadSuccess value)? downloadSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_Failed value)? failure,
    required TResult orElse(),
  }) {
    if (downloadSuccess != null) {
      return downloadSuccess(this);
    }
    return orElse();
  }
}

abstract class _DownloadSuccess implements NotesState {
  const factory _DownloadSuccess(final List<Note> notes) = _$_DownloadSuccess;

  List<Note> get notes;
  @JsonKey(ignore: true)
  _$$_DownloadSuccessCopyWith<_$_DownloadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteSuccessCopyWith<$Res> {
  factory _$$_DeleteSuccessCopyWith(
          _$_DeleteSuccess value, $Res Function(_$_DeleteSuccess) then) =
      __$$_DeleteSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DeleteSuccessCopyWithImpl<$Res>
    extends _$NotesStateCopyWithImpl<$Res, _$_DeleteSuccess>
    implements _$$_DeleteSuccessCopyWith<$Res> {
  __$$_DeleteSuccessCopyWithImpl(
      _$_DeleteSuccess _value, $Res Function(_$_DeleteSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DeleteSuccess implements _DeleteSuccess {
  const _$_DeleteSuccess();

  @override
  String toString() {
    return 'NotesState.deleteSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DeleteSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<Note> notes) downloadSuccess,
    required TResult Function() deleteSuccess,
    required TResult Function(NoteFailure failure) failure,
  }) {
    return deleteSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(List<Note> notes)? downloadSuccess,
    TResult? Function()? deleteSuccess,
    TResult? Function(NoteFailure failure)? failure,
  }) {
    return deleteSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<Note> notes)? downloadSuccess,
    TResult Function()? deleteSuccess,
    TResult Function(NoteFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_DownloadSuccess value) downloadSuccess,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_Failed value) failure,
  }) {
    return deleteSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_DownloadSuccess value)? downloadSuccess,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
    TResult? Function(_Failed value)? failure,
  }) {
    return deleteSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_DownloadSuccess value)? downloadSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_Failed value)? failure,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeleteSuccess implements NotesState {
  const factory _DeleteSuccess() = _$_DeleteSuccess;
}

/// @nodoc
abstract class _$$_FailedCopyWith<$Res> {
  factory _$$_FailedCopyWith(_$_Failed value, $Res Function(_$_Failed) then) =
      __$$_FailedCopyWithImpl<$Res>;
  @useResult
  $Res call({NoteFailure failure});
}

/// @nodoc
class __$$_FailedCopyWithImpl<$Res>
    extends _$NotesStateCopyWithImpl<$Res, _$_Failed>
    implements _$$_FailedCopyWith<$Res> {
  __$$_FailedCopyWithImpl(_$_Failed _value, $Res Function(_$_Failed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_Failed(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as NoteFailure,
    ));
  }
}

/// @nodoc

class _$_Failed implements _Failed {
  const _$_Failed(this.failure);

  @override
  final NoteFailure failure;

  @override
  String toString() {
    return 'NotesState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failed &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailedCopyWith<_$_Failed> get copyWith =>
      __$$_FailedCopyWithImpl<_$_Failed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<Note> notes) downloadSuccess,
    required TResult Function() deleteSuccess,
    required TResult Function(NoteFailure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(List<Note> notes)? downloadSuccess,
    TResult? Function()? deleteSuccess,
    TResult? Function(NoteFailure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<Note> notes)? downloadSuccess,
    TResult Function()? deleteSuccess,
    TResult Function(NoteFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_DownloadSuccess value) downloadSuccess,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_Failed value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_DownloadSuccess value)? downloadSuccess,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
    TResult? Function(_Failed value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_DownloadSuccess value)? downloadSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_Failed value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failed implements NotesState {
  const factory _Failed(final NoteFailure failure) = _$_Failed;

  NoteFailure get failure;
  @JsonKey(ignore: true)
  _$$_FailedCopyWith<_$_Failed> get copyWith =>
      throw _privateConstructorUsedError;
}
