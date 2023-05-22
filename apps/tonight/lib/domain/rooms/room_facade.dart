import 'package:dartz/dartz.dart';
import 'package:tonight/domain/rooms/room_entity.dart';
import 'package:tonight/domain/rooms/room_failure.dart';

abstract class RoomFacade {
  Stream<Either<RoomFailure, List<Room>>> listenToUserRooms();
}
