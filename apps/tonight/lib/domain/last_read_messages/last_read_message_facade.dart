import 'package:dartz/dartz.dart';
import 'package:tonight/domain/last_read_messages/last_read_message_failure.dart';

abstract class LastReadMessageFacade {
  Stream<Either<LastReadMessageFailure, String?>>
      listenToLastReadMessageIdFromRoom(
    String roomId,
  );

  Future<Either<LastReadMessageFailure, Unit>> updateLastReadMessageId({
    required String roomId,
    required String messageId,
  });
}
