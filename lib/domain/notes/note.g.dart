// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoteImpl _$$NoteImplFromJson(Map<String, dynamic> json) => _$NoteImpl(
      id: const IdConverter().fromJson(json['id'] as String),
      title: json['title'] as String?,
      text: json['text'] as String,
      color: const ColorJsonConverter().fromJson(json['color'] as String),
      todos: (json['todos'] as List<dynamic>?)
              ?.map((e) => Todo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      timestamp:
          const TimestampConverter().fromJson(json['timestamp'] as Timestamp),
    );

Map<String, dynamic> _$$NoteImplToJson(_$NoteImpl instance) =>
    <String, dynamic>{
      'id': const IdConverter().toJson(instance.id),
      'title': instance.title,
      'text': instance.text,
      'color': const ColorJsonConverter().toJson(instance.color),
      'todos': instance.todos.map((e) => e.toJson()).toList(),
      'timestamp': const TimestampConverter().toJson(instance.timestamp),
    };
