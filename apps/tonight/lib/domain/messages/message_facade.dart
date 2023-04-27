import 'package:dartz/dartz.dart';
import 'package:tonight/domain/messages/message_entity.dart';
import 'package:tonight/domain/messages/message_failure.dart';

abstract class MessageFacade {
  Future<Either<MessageFailure, Unit>> sendMessage({
    required Message message,
    required String roomId,
  });

  Stream<Either<MessageFailure, List<Message>>> listenToMessages({
    required String roomId,
    int pageSize = 20,
  });

  Future<Either<MessageFailure, List<Message>>> fetchMessages({
    required String roomId,
    int pageSize = 20,
    Message? lastMessage,
  });

  Future<Either<MessageFailure, Unit>> joinToChat({
    required String roomId,
    required String userId,
    required String username,
  });
}
