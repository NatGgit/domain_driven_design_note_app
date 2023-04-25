// ignore_for_file: invalid_annotation_target

import 'package:domain_driven_design_note_app/domain/core/converters.dart';
import 'package:domain_driven_design_note_app/domain/core/unique_id.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.freezed.dart';
part 'todo.g.dart';

@freezed
class Todo with _$Todo {
  const factory Todo({
    @IdConverter() required UniqueId id,
    required String text,
    @JsonKey(name: 'is_done') @Default(false) bool isDone,
  }) = _Todo;

  factory Todo.empty() => Todo(text: '', id: UniqueId());

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
}
