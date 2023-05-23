import 'package:dartz/dartz.dart';
import 'package:tonight/application/chats/aggregator/chats_failure.dart';
import 'package:tonight/application/chats/model/chat_model.dart';
import 'package:tonight/domain/rooms/room_facade.dart';

class ChatsAggregator {
  final RoomFacade _roomFacade;

  ChatsAggregator(this._roomFacade);

  Future<Either<ChatsFailure, List<Chat>>> getUserChats({
    int pageSize = 20,
    String? lastRoomId,
  }) async {
    final userRoomsResult = await _roomFacade.getUserRooms(
      pageSize: pageSize,
      lastRoomId: lastRoomId,
    );
    return userRoomsResult.fold(
      (_) => left(const ChatsFailure.unexpected()),
      (rooms) {
        final userChats = rooms.map((room) => Chat.fromRoom(room)).toList();
        return right(userChats);
      },
    );
  }
}
