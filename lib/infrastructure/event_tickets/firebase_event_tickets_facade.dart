import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:logger/logger.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/domain/domain.dart';
import 'package:raver_events/infrastructure/event_tickets/dtos/event_tickets_dto.dart';
import 'package:raver_events/infrastructure/event_tickets/dtos/ticket_pool_dto.dart';
import 'package:raver_events/infrastructure/events/dtos/event_dto.dart';
import 'package:collection/collection.dart';

class FirebaseEventTicketsFacade implements EventTicketsFacade {
  final FirebaseFirestore _firestore;
  final Logger _logger;

  FirebaseEventTicketsFacade({
    required FirebaseFirestore firestore,
    required Logger logger,
  })  : _firestore = firestore,
        _logger = logger;

  @override
  Stream<Either<EventTicketsFailure, EventTickets>> getEventTickets(
    Event event,
  ) async* {
    final eventTicketDocRef = _getEventTicketDocRef(event.clubId, event.id);

    yield* eventTicketDocRef
        .snapshots()
        .map(
          (snapshot) => right<EventTicketsFailure, EventTickets>(
            EventTicketsDto.fromFirebase(snapshot).toDomain(),
          ),
        )
        .handleError((e) {
      if (e is FirebaseException) {
        _logger
            .e("Firebase Exception during getting event tickets EXCEPTION: $e");
        return left(const EventTicketsFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<EventTicketsFailure, Unit>> addTicketPool(
    Event event,
    TicketPool ticketPool,
  ) async {
    final eventTicketDocRef = _getEventTicketDocRef(event.clubId, event.id);

    return _firestore
        .runTransaction<Either<EventTicketsFailure, Unit>>((transaction) async {
      final eventTicketDoc = await transaction.get(eventTicketDocRef);

      if (!eventTicketDoc.exists) throw InvalidIdError();

      var eventTicketDto = EventTicketsDto.fromFirebase(eventTicketDoc);

      if (eventTicketDto.isSoldOut) {
        eventTicketDto = eventTicketDto.copyWith(isSoldOut: false);
        await _updateEventPrice(event.id, ticketPool.ticketPrice);
      }

      eventTicketDto = eventTicketDto.copyWith(
        ticketQuantity:
            eventTicketDto.ticketQuantity + ticketPool.ticketQuantity,
      );

      final ticketPoolDto = TicketPoolDto.fromDomain(ticketPool);

      eventTicketDto.ticketPools.add(ticketPoolDto);

      transaction.update(eventTicketDocRef, eventTicketDto.toJson());

      return right(unit);
    }).catchError((e) {
      if (e is FirebaseException) {
        _logger.e("Firebase Exception during adding ticket pool EXCEPTION: $e");
        return left<EventTicketsFailure, Unit>(
          const EventTicketsFailure.unexpected(),
        );
      }
    });
  }

  @override
  Future<Either<EventTicketsFailure, Unit>> updateTicketPool(
    Event event,
    TicketPool updatedTicketPool,
  ) {
    final eventTicketDocRef = _getEventTicketDocRef(event.clubId, event.id);

    return _firestore
        .runTransaction<Either<EventTicketsFailure, Unit>>((transaction) async {
      final eventTicketDoc = await transaction.get(eventTicketDocRef);

      if (!eventTicketDoc.exists) throw InvalidIdError();

      var eventTicketDto = EventTicketsDto.fromFirebase(eventTicketDoc);
      final ticketPools = eventTicketDto.ticketPools;
      final oldTicketPool = ticketPools.firstWhere(
        (pool) => pool.poolNumber == updatedTicketPool.poolNumber,
      );

      final isPriceChangedAfterTicketSold = oldTicketPool.ticketsSold > 0 &&
          oldTicketPool.ticketPrice != updatedTicketPool.ticketPrice;

      if (isPriceChangedAfterTicketSold) {
        return left(const EventTicketsFailure.priceChangedAfterTicketWasSold());
      }

      if (oldTicketPool.ticketsSold > updatedTicketPool.ticketQuantity) {
        return left(
          const EventTicketsFailure.quantityChangedToLessThanTicketsSold(),
        );
      }

      final isCurrentPoolSoldOut =
          oldTicketPool.ticketsSold == updatedTicketPool.ticketQuantity &&
              updatedTicketPool.isCurrent;

      if (isCurrentPoolSoldOut) {
        updatedTicketPool = updatedTicketPool.copyWith(
          isSoldOut: true,
          isCurrent: false,
        );

        final isLastPool =
            updatedTicketPool.poolNumber == ticketPools.last.poolNumber;

        isLastPool
            ? eventTicketDto = eventTicketDto.copyWith(isSoldOut: true)
            : _startNextPool(oldTicketPool, ticketPools, event.id);
      }

      _updatePool(oldTicketPool, updatedTicketPool, ticketPools);

      eventTicketDto = eventTicketDto.copyWith(
        ticketQuantity: ticketPools.map((pool) => pool.ticketQuantity).sum,
      );

      transaction.update(eventTicketDocRef, eventTicketDto.toJson());

      return right(unit);
    }).catchError((e) {
      if (e is FirebaseException) {
        _logger
            .e("Firebase Exception during updating ticket pool EXCEPTION: $e");
        return left<EventTicketsFailure, Unit>(
          const EventTicketsFailure.unexpected(),
        );
      }
    });
  }

  @override
  Future<Either<EventTicketsFailure, Unit>> deleteTicketPool(
    Event event,
    TicketPool ticketPool,
  ) {
    final eventTicketDocRef = _getEventTicketDocRef(event.clubId, event.id);

    return _firestore
        .runTransaction<Either<EventTicketsFailure, Unit>>((transaction) async {
      final eventTicketDoc = await transaction.get(eventTicketDocRef);

      if (!eventTicketDoc.exists) throw InvalidIdError();

      var eventTicketDto = EventTicketsDto.fromFirebase(eventTicketDoc);
      final ticketPools = eventTicketDto.ticketPools;
      final deletingPool = ticketPools.firstWhere(
        (pool) => pool.poolNumber == ticketPool.poolNumber,
      );

      if (deletingPool.ticketsSold > 0) {
        return left(
          const EventTicketsFailure.deletedTicketPoolAfterTicketWasSold(),
        );
      }

      final isLastPool = deletingPool.poolNumber == ticketPools.last.poolNumber;

      if (!isLastPool) {
        if (deletingPool.isCurrent) {
          _startNextPool(deletingPool, ticketPools, event.id);
        }

        _shiftNumbersOfNextPools(deletingPool, ticketPools);
      }

      ticketPools.remove(deletingPool);

      if (ticketPools.every((pool) => pool.isSoldOut)) {
        eventTicketDto = eventTicketDto.copyWith(isSoldOut: true);
      }

      eventTicketDto = eventTicketDto.copyWith(
        ticketQuantity:
            eventTicketDto.ticketQuantity - ticketPool.ticketQuantity,
      );

      transaction.update(eventTicketDocRef, eventTicketDto.toJson());

      return right(unit);
    }).catchError((e) {
      if (e is FirebaseException) {
        _logger
            .e("Firebase Exception during deleting ticket pool EXCEPTION: $e");
        return left<EventTicketsFailure, Unit>(
          const EventTicketsFailure.unexpected(),
        );
      }
    });
  }

  DocumentReference _getEventTicketDocRef(String clubId, String eventId) {
    final clubDoc = _firestore.clubCollection.doc(clubId);
    return clubDoc.eventTickets.doc(eventId);
  }

  Future<void> _startNextPool(
    TicketPoolDto currentPool,
    List<TicketPoolDto> ticketPools,
    String eventId,
  ) async {
    final nextPool = ticketPools.firstWhere(
      (pool) => pool.poolNumber == currentPool.poolNumber + 1,
    );

    final index = ticketPools.indexOf(nextPool);
    ticketPools[index] = nextPool.copyWith(isCurrent: true);

    await _updateEventPrice(eventId, nextPool.ticketPrice);
  }

  _updatePool(
    TicketPoolDto oldTicketPool,
    TicketPool updatedTicketPool,
    List<TicketPoolDto> ticketPools,
  ) {
    final ticketPoolDto = TicketPoolDto.fromDomain(updatedTicketPool);
    final index = ticketPools.indexOf(oldTicketPool);
    ticketPools[index] = ticketPoolDto;
  }

  _shiftNumbersOfNextPools(
    TicketPoolDto deletingPool,
    List<TicketPoolDto> ticketPools,
  ) {
    final nextPools =
        ticketPools.where((pool) => pool.poolNumber > deletingPool.poolNumber);

    for (var pool in nextPools) {
      final index = ticketPools.indexOf(pool);
      ticketPools[index] = pool.copyWith(poolNumber: pool.poolNumber - 1);
    }
  }

  Future<Unit> _updateEventPrice(String eventId, int newPrice) async {
    final eventDocRef = _firestore.eventCollection.doc(eventId);

    return _firestore.runTransaction((transaction) async {
      final eventDoc = await transaction.get(eventDocRef);

      if (!eventDoc.exists) throw InvalidIdError();

      var eventDto = EventDto.fromFirebase(eventDoc);

      eventDto = eventDto.copyWith(price: newPrice);

      transaction.update(eventDocRef, eventDto.toJson());

      return unit;
    });
  }
}
