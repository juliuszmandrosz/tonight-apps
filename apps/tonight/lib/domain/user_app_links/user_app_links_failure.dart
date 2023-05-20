import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_app_links_failure.freezed.dart';

@freezed
class UserAppLinksFailure with _$UserAppLinksFailure {
  const factory UserAppLinksFailure.unexpected() = _Unexpected;
}
