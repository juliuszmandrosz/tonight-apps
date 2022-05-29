import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_tickets/domain/domain.dart';
import 'package:raver_tickets/infrastructure/cloud_functions/cloud_functions_failures.dart';
import 'package:raver_tickets/infrastructure/cloud_functions/params/return_ticket_params.dart';
import 'package:raver_tickets/infrastructure/cloud_functions/ticket_cloud_functions_facade.dart';
import 'package:raver_tickets/infrastructure/ticket_dto.dart';

class FirebaseTicketFacade implements UserTicketFacade, SelectorTicketFacade {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _firebaseAuth;
  final TicketCloudFunctionsFacade _ticketCloudFunctionsFacade;
  final Logger _logger;

  FirebaseTicketFacade({
    required FirebaseFirestore firestore,
    required FirebaseAuth firebaseAuth,
    required TicketCloudFunctionsFacade ticketCloudFunctionsFacade,
    required Logger logger,
  })  : _firestore = firestore,
        _firebaseAuth = firebaseAuth,
        _ticketCloudFunctionsFacade = ticketCloudFunctionsFacade,
        _logger = logger;

  @override
  Future<Either<UserTicketFailure, List<Ticket>>> getLiveUserTickets() async {
    try {
      final userDocRef = _firestore.getCurrentUserDocRef(_firebaseAuth);

      final result = await userDocRef.ticketCollection
          .where('eventStartDateTime', isLessThanOrEqualTo: Timestamp.now())
          .where('eventEndDateTime', isGreaterThan: Timestamp.now())
          .orderBy('eventStartDateTime')
          .get();

      return right<UserTicketFailure, List<Ticket>>(
        result.docs
            .map((doc) => TicketDto.fromFirebase(doc).toDomain())
            .toList(),
      );
    } on FirebaseException catch (e) {
      _logger.e("Firebase Exception getting live user tickets EXCEPTION: $e");
      return left(const UserTicketFailure.unexpected());
    }
  }

  @override
  Future<Either<UserTicketFailure, List<Ticket>>>
      getUpcomingUserTickets() async {
    try {
      final userDocRef = _firestore.getCurrentUserDocRef(_firebaseAuth);

      final result = await userDocRef.ticketCollection
          .where('eventStartDateTime', isGreaterThan: Timestamp.now())
          .orderBy('eventStartDateTime')
          .get();

      return right<UserTicketFailure, List<Ticket>>(
        result.docs
            .map((doc) => TicketDto.fromFirebase(doc).toDomain())
            .toList(),
      );
    } on FirebaseException catch (e) {
      _logger
          .e("Firebase Exception getting upcoming user tickets EXCEPTION: $e");
      return left(const UserTicketFailure.unexpected());
    }
  }

  @override
  Future<Either<UserTicketFailure, List<Ticket>>> getPastUserTickets({
    int pageSize = 20,
    Ticket? lastTicket,
  }) async {
    try {
      final userDocRef = _firestore.getCurrentUserDocRef(_firebaseAuth);

      var query = userDocRef.ticketCollection
          .where('eventEndDateTime', isLessThanOrEqualTo: Timestamp.now())
          .orderBy('eventEndDateTime', descending: true)
          .limit(pageSize);

      if (lastTicket != null) {
        final lastDoc =
            await userDocRef.ticketCollection.doc(lastTicket.id).get();

        query = query.startAfterDocument(lastDoc);
      }

      final result = await query.get();

      return right<UserTicketFailure, List<Ticket>>(
        result.docs
            .map((doc) => TicketDto.fromFirebase(doc).toDomain())
            .toList(),
      );
    } on FirebaseException catch (e) {
      _logger.e("Firebase Exception getting past user tickets EXCEPTION: $e");
      return left(const UserTicketFailure.unexpected());
    }
  }

  @override
  Future<Either<UserTicketFailure, Ticket>> waitForTicketToBeCreated(
    String eventId,
  ) async {
    try {
      final userDocRef = _firestore.getCurrentUserDocRef(_firebaseAuth);

      Ticket result;

      final query = userDocRef.ticketCollection
          .where('eventId', isEqualTo: eventId)
          .limit(1);

      final snapshot = await query.snapshots().firstWhere(
            (snap) => snap.docChanges
                .any((change) => change.type == DocumentChangeType.added),
          );

      result = snapshot.docs
          .map((doc) => TicketDto.fromFirebase(doc).toDomain())
          .first;

      return right(result);
    } on FirebaseException catch (e) {
      _logger.e(
        "Firebase Exception waiting for ticket to be created EXCEPTION: $e",
      );
      return left(const UserTicketFailure.unexpected());
    }
  }

  @override
  Future<Either<UserTicketFailure, Ticket>> waitForTicketToBeUpdated(
    String eventId,
  ) async {
    try {
      final userDocRef = _firestore.getCurrentUserDocRef(_firebaseAuth);

      Ticket result;

      final query = userDocRef.ticketCollection
          .where('eventId', isEqualTo: eventId)
          .limit(1);

      final snapshot = await query.snapshots().firstWhere(
            (snap) => snap.docChanges
                .any((change) => change.type == DocumentChangeType.modified),
          );

      result = snapshot.docs
          .map((doc) => TicketDto.fromFirebase(doc).toDomain())
          .first;

      return right(result);
    } on FirebaseException catch (e) {
      _logger.e(
        "Firebase Exception waiting for ticket to be updated EXCEPTION: $e",
      );
      return left(const UserTicketFailure.unexpected());
    }
  }

  @override
  Future<Either<SelectorTicketFailure, Tuple2<Ticket, int>>> scanTicket(
    String ticketId,
    String currentEventId,
    String userId,
  ) async {
    try {
      final userDocRef = _firestore.userCollection.doc(userId);

      final ticketDocRef = userDocRef.ticketCollection.doc(ticketId);

      final result = await _firestore
          .runTransaction<Either<SelectorTicketFailure, Ticket>>(
              (transaction) async {
        final ticketDoc = await transaction.get(ticketDocRef);

        if (!ticketDoc.exists) {
          return left(const SelectorTicketFailure.invalidTicket());
        }

        var ticketDto = TicketDto.fromFirebase(ticketDoc);

        if (ticketDto.isReturned) {
          return left(const SelectorTicketFailure.ticketReturned());
        }

        if (ticketDto.isExpired) {
          return left(const SelectorTicketFailure.ticketExpired());
        }

        if (ticketDto.eventId != currentEventId) {
          return left(const SelectorTicketFailure.ticketForAnotherEvent());
        }

        ticketDto = ticketDto.copyWith(isExpired: true);

        transaction.update(
          ticketDocRef,
          ticketDto.toJson(),
        );

        return right(ticketDto.toDomain());
      });

      var attendance = 0;

      if (result.isRight()) {
        attendance = await _firestore.runTransaction((transaction) async {
          final userDoc = await transaction.get(userDocRef);

          final attendance = userDoc.get('attendance') as Map<String, dynamic>;

          final ticket = result.getRightOrCrash();

          final attendanceInCurrentClub = attendance[ticket.clubId] ?? 0;

          attendance[ticket.clubId] = attendanceInCurrentClub + 1;

          transaction.update(
            userDocRef,
            {'attendance': attendance},
          );

          return attendanceInCurrentClub;
        });
      }

      return result.fold(
        (failure) => left(failure),
        (ticket) => right(
          Tuple2(ticket, attendance),
        ),
      );
    } on FirebaseException catch (e) {
      _logger.e("Exception scanning ticket EXCEPTION: $e");
      return left(const SelectorTicketFailure.unexpected());
    }
  }

  @override
  Future<Either<UserTicketFailure, Unit>> returnTicket(
    String ticketPaymentId,
    String ticketId,
  ) async {
    try {
      final params = ReturnTicketParams(
        ticketPaymentId: ticketPaymentId,
        ticketId: ticketId,
      );
      await _ticketCloudFunctionsFacade.returnTicket(params);
      return right(unit);
    } on FirebaseFunctionsException catch (e) {
      _logger.e(
        "Firebase Functions Exception during returning ticket EXCEPTION: $e",
      );
      return left(
        cloudFunctionsFailures[e.details] ??
            const UserTicketFailure.unexpected(),
      );
    }
  }
}
