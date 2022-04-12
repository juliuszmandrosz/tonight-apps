import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_tickets/domain/ticket_entity.dart';
import 'package:raver_tickets/domain/ticket_facade.dart';
import 'package:raver_tickets/domain/ticket_failure.dart';
import 'package:raver_tickets/infrastructure/cloud_functions/cloud_functions_failures.dart';
import 'package:raver_tickets/infrastructure/cloud_functions/params/return_ticket_params.dart';
import 'package:raver_tickets/infrastructure/cloud_functions/ticket_cloud_functions_facade.dart';
import 'package:raver_tickets/infrastructure/ticket_dto.dart';

class FirebaseTicketFacade implements TicketFacade {
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
  Future<Either<TicketFailure, List<Ticket>>> getUserTickets() async {
    final userDoc = _getCurrentUserDocumentRef();
    try {
      final result = await userDoc.ticketCollection.get();
      return right<TicketFailure, List<Ticket>>(
        result.docs
            .map((doc) => TicketDto.fromFirebase(doc).toDomain())
            .toList(),
      );
    } on FirebaseException catch (e) {
      _logger.e("Exception fetching tickets EXCEPTION: $e");
      return left(const TicketFailure.unexpected());
    }
  }

  @override
  Future<Either<TicketFailure, Ticket>> scanTicket(
    String ticketId,
    String currentEventId,
    String userId,
  ) async {
    try {
      final userDocRef = _firestore.userCollection.doc(userId);

      final ticketDocRef = userDocRef.ticketCollection.doc(ticketId);

      return _firestore.runTransaction((transaction) async {
        final ticketDoc = await transaction.get(ticketDocRef);

        if (!ticketDoc.exists) {
          return left(const TicketFailure.invalidTicket());
        }

        var ticketDto = TicketDto.fromFirebase(ticketDoc);

        if (ticketDto.isExpired) {
          return left(const TicketFailure.ticketExpired());
        }

        if (ticketDto.eventId != currentEventId) {
          return left(const TicketFailure.ticketForAnotherEvent());
        }

        ticketDto = ticketDto.copyWith(isExpired: true);

        transaction.update(
          ticketDocRef,
          ticketDto.toJson(),
        );

        return right(ticketDto.toDomain());
      });
    } on FirebaseException catch (e) {
      _logger.e("Exception scanning ticket EXCEPTION: $e");
      return left(const TicketFailure.unexpected());
    }
  }

  @override
  Future<Either<TicketFailure, Unit>> returnTicket(
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
        cloudFunctionsFailures[e.details] ?? const TicketFailure.unexpected(),
      );
    }
  }

  DocumentReference _getCurrentUserDocumentRef() {
    final firebaseUser = _firebaseAuth.currentUser;

    if (firebaseUser == null) throw NotAuthenticatedError();

    return _firestore.userCollection.doc(firebaseUser.uid);
  }
}
