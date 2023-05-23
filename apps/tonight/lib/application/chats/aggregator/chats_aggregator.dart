import 'package:account_settings/domain/user_account_facade.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:tonight/application/chats/aggregator/chats_failure.dart';
import 'package:tonight/application/chats/model/chat_model.dart';
import 'package:tonight/domain/rooms/room_facade.dart';

class ChatsAggregator {
  final RoomFacade _roomFacade;
  final UserAccountFacade _userAccountFacade;

  ChatsAggregator(this._roomFacade, this._userAccountFacade);

  Stream<Either<ChatsFailure, List<Chat>>> listenToUserChats({
    int pageSize = 20,
  }) async* {
    final userResult = await _userAccountFacade.getUserAccount().first;

    if (userResult.isLeft()) {
      yield left(const ChatsFailure.unexpected());
      return;
    }

    final user = userResult.getRightOrCrash();

    yield* _roomFacade.listenToUserRooms().map(
          (roomsResult) => roomsResult.fold(
            (failure) => left(const ChatsFailure.unexpected()),
            (rooms) {
              if (rooms.isEmpty) {
                return right([]);
              }

              final chats = rooms
                  .map((room) => Chat.fromDomain(room: room, userId: user.id))
                  .toList();

              return right(chats);
            },
          ),
        );
  }
}
