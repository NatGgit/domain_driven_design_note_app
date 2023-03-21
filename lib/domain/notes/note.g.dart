// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Note _$$_NoteFromJson(Map<String, dynamic> json) => _$_Note(
      id: UniqueId.fromJson(json['id'] as Map<String, dynamic>),
      text: json['text'] as String,
      color: const ColorJsonConverter().fromJson(json['color'] as String),
      todos: (json['todos'] as List<dynamic>?)
              ?.map((e) => Todo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      timestamp: DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$$_NoteToJson(_$_Note instance) => <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'color': const ColorJsonConverter().toJson(instance.color),
      'todos': instance.todos,
      'timestamp': instance.timestamp.toIso8601String(),
    };
