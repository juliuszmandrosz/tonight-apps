import 'package:dartz/dartz.dart';
import 'package:tonight/domain/rooms/room_entity.dart';
import 'package:tonight/domain/rooms/room_failure.dart';

abstract class RoomFacade {
  Future<Either<RoomFailure, List<Room>>> getUserRooms({
    int pageSize = 20,
    String? lastRoomId,
  });
}
