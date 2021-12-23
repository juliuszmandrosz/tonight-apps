import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver/domain/core/value_objects/unique_id.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User({
    required UniqueId id,
  }) = _User;
}
