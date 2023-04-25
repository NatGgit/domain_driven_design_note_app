// ignore_for_file: non_constant_identifier_names, invalid_annotation_target
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:domain_driven_design_note_app/domain/core/converters.dart';
import 'package:domain_driven_design_note_app/domain/core/unique_id.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'todo.dart';

part 'note.freezed.dart';
part 'note.g.dart';

@freezed
class Note with _$Note {
  @JsonSerializable(explicitToJson: true)
  const factory Note({
    @IdConverter() required UniqueId id,
    String? title,
    required String text,
    @ColorJsonConverter() required Color color,
    @Default([]) List<Todo> todos,
    @TimestampConverter() required DateTime timestamp,
  }) = _Note;

  factory Note.fromJson(Map<String, dynamic> json) => _$NoteFromJson(json);
}
