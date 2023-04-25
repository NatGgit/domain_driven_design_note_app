import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:domain_driven_design_note_app/domain/core/unique_id.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class ColorJsonConverter extends JsonConverter<Color, String> {
  const ColorJsonConverter();

  @override
  Color fromJson(String json) {
    return Color(int.parse(json));
  }

  @override
  String toJson(Color object) {
    return object.value.toString();
  }
}

class TimestampConverter implements JsonConverter<DateTime, Timestamp> {
  const TimestampConverter();

  @override
  DateTime fromJson(Timestamp timestamp) {
    return timestamp.toDate();
  }

  @override
  Timestamp toJson(DateTime date) => Timestamp.fromDate(date);
}

class IdConverter implements JsonConverter<UniqueId, String> {
  const IdConverter();

  @override
  UniqueId fromJson(String string) {
    return UniqueId.fromUniqueString(string);
  }

  @override
  String toJson(UniqueId id) => id.value;
}
