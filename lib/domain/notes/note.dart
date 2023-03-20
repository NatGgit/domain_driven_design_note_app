import 'package:domain_driven_design_note_app/domain/core/unique_id.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'todo.dart';

part 'note.freezed.dart';

@freezed
class Note with _$Note {
  const factory Note({
    required UniqueId id,
    required String text,
    required Color color,
    @Default([]) List<Todo> todos,
  }) = _Note;
}
