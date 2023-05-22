import 'package:freezed_annotation/freezed_annotation.dart';

part 'chats_failure.freezed.dart';

@freezed
class ChatsFailure with _$ChatsFailure {
  const ChatsFailure._();

  const factory ChatsFailure.unexpected() = _Unexpected;
}
