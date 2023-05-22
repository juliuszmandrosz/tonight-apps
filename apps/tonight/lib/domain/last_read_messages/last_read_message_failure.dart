import 'package:freezed_annotation/freezed_annotation.dart';

part 'last_read_message_failure.freezed.dart';

@freezed
class LastReadMessageFailure with _$LastReadMessageFailure {
  const LastReadMessageFailure._();

  const factory LastReadMessageFailure.unexpected() = _Unexpected;
}
