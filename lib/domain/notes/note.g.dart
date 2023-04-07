// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Note _$$_NoteFromJson(Map<String, dynamic> json) => _$_Note(
      id: json['id'] == null
          ? null
          : UniqueId.fromJson(json['id'] as Map<String, dynamic>),
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

Map<String, dynamic> _$$_NoteToJson(_$_Note instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'text': instance.text,
      'color': const ColorJsonConverter().toJson(instance.color),
      'todos': instance.todos,
      'timestamp': const TimestampConverter().toJson(instance.timestamp),
    };
