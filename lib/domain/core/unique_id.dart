import 'package:json_annotation/json_annotation.dart';
import 'package:uuid/uuid.dart';

part 'unique_id.g.dart';

@JsonSerializable()
class UniqueId {
  final String value;

  const UniqueId._(this.value);

  factory UniqueId() {
    return UniqueId._(const Uuid().v1());
  }

  factory UniqueId.fromUniqueString(String id) {
    return UniqueId._(id);
  }

  factory UniqueId.fromJson(Map<String, dynamic> json) =>
      _$UniqueIdFromJson(json);
}
