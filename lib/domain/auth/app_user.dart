import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver/domain/core/value_objects/unique_id.dart';

part 'app_user.freezed.dart';

@freezed
abstract class AppUser with _$AppUser {
  const factory AppUser({
    required UniqueId id,
  }) = _AppUser;
}
