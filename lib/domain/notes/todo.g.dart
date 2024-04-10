// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodoImpl _$$TodoImplFromJson(Map<String, dynamic> json) => _$TodoImpl(
      id: const IdConverter().fromJson(json['id'] as String),
      text: json['text'] as String,
      isDone: json['is_done'] as bool? ?? false,
    );

Map<String, dynamic> _$$TodoImplToJson(_$TodoImpl instance) =>
    <String, dynamic>{
      'id': const IdConverter().toJson(instance.id),
      'text': instance.text,
      'is_done': instance.isDone,
    };
