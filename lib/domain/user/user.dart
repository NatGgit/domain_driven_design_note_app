import 'package:domain_driven_design_note_app/domain/core/unique_id.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({required UniqueId id}) = _UserEntity;
  // String id;
  // String email;
}

// import 'package:uuid/uuid.dart';

// class User {
//   final String id;

//   User() : id = const Uuid().v1();
// }
