import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:logger/logger.dart';
import 'package:tickets/domain/domain.dart';
import 'package:tickets/infrastructure/cloud_functions/cloud_functions_failures.dart';
import 'package:tickets/infrastructure/cloud_functions/params/return_ticket_params.dart';
import 'package:tickets/infrastructure/cloud_functions/ticket_cloud_functions_facade.dart';
import 'package:tickets/infrastructure/ticket_dto.dart';

class FirebaseTicketFacade implements UserTicketFacade, SelectorTicketFacade {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _firebaseAuth;
  final TicketCloudFunctionsFacade _ticketCloudFunctionsFacade;
  final FirebaseCrashlytics _crashlytics;
  final Logger _logger;

  FirebaseTicketFacade({
    required FirebaseFirestore firestore,
    required FirebaseAuth firebaseAuth,
    required TicketCloudFunctionsFacade ticketCloudFunctionsFacade,
    required FirebaseCrashlytics crashlytics,
    required Logger logger,
  })  : _firestore = firestore,
        _firebaseAuth = firebaseAuth,
        _ticketCloudFunctionsFacade = ticketCloudFunctionsFacade,
        _crashlytics = crashlytics,
        _logger = logger;

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
      return left(
        await handleFirebaseError<SelectorTicketFailure>(
          logger: _logger,
          crashlytics: _crashlytics,
          exception: e,
          message: 'Firebase exception scanning ticket EXCEPTION: $e',
          unexpectedFailure: const SelectorTicketFailure.unexpected(),
          permissionDeniedFailure:
              const SelectorTicketFailure.permissionDenied(),
        ),
      );
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

      final failure = cloudFunctionsFailures[e.details];

      if (failure != null) {
        return left(failure);
      }

      await _crashlytics.recordError(e, StackTrace.current);

      return left(const UserTicketFailure.unexpected());
    }
  }

  @override
  Future<Either<UserTicketFailure, Unit>> activateTicket(
    String ticketId,
  ) async {
    try {
      final userDocRef = _firestore.getCurrentUserDocRef(_firebaseAuth);
      final ticketDocRef = userDocRef.ticketCollection.doc(ticketId);
      return _firestore.runTransaction((tx) async {
        final ticketDoc = await tx.get(ticketDocRef);
        if (!ticketDoc.exists) {
          return left(const UserTicketFailure.ticketNotExists());
        }
        var ticketDto = TicketDto.fromFirebase(ticketDoc);
        final isValidTicket = !ticketDto.isReturned && !ticketDto.isExpired;
        if (!isValidTicket) {
          return left(const UserTicketFailure.ticketExpired());
        }
        ticketDto = ticketDto.copyWith(
          isActivated: true,
          usedAt: DateTime.now(),
        );
        tx.update(
          ticketDocRef,
          ticketDto.toJson(),
        );
        return right(unit);
      });
    } on FirebaseException catch (e) {
      return left(
        await handleFirebaseError<UserTicketFailure>(
          logger: _logger,
          crashlytics: _crashlytics,
          exception: e,
          unexpectedFailure: const UserTicketFailure.unexpected(),
          permissionDeniedFailure: const UserTicketFailure.permissionDenied(),
        ),
      );
    }
  }

  @override
  Future<Either<UserTicketFailure, Unit>> receiveTicket(String ticketId) async {
    try {
      final userDocRef = _firestore.getCurrentUserDocRef(_firebaseAuth);
      final ticketDocRef = userDocRef.ticketCollection.doc(ticketId);
      await ticketDocRef.update({'isExpired': true});
      // TODO - update attendance
      return right(unit);
    } on FirebaseException catch (e) {
      return left(
        await handleFirebaseError<UserTicketFailure>(
          logger: _logger,
          crashlytics: _crashlytics,
          exception: e,
          unexpectedFailure: const UserTicketFailure.unexpected(),
          permissionDeniedFailure: const UserTicketFailure.permissionDenied(),
        ),
      );
    }
  }

  @override
  Stream<Either<UserTicketFailure, Ticket>> listenTicketById(
    String ticketId,
  ) async* {
    final userDocRef = _firestore.getCurrentUserDocRef(_firebaseAuth);
    final ticketDocRef = userDocRef.ticketCollection.doc(ticketId);
    yield* ticketDocRef.snapshots().map(
      (snapshot) {
        if (!snapshot.exists) {
          return left<UserTicketFailure, Ticket>(
              const UserTicketFailure.ticketNotExists());
        }
        final ticketDto = TicketDto.fromFirebase(snapshot);
        return right<UserTicketFailure, Ticket>(ticketDto.toDomain());
      },
    ).handleError((e) {
      if (e is FirebaseException) {
        return left(
          handleFirebaseError<UserTicketFailure>(
            logger: _logger,
            crashlytics: _crashlytics,
            exception: e,
            unexpectedFailure: const UserTicketFailure.unexpected(),
            permissionDeniedFailure: const UserTicketFailure.permissionDenied(),
          ),
        );
      }
    });
  }

  @override
  Future<Either<UserTicketFailure, List<Ticket>>> getUserTickets({
    int pageSize = 20,
    Ticket? lastTicket,
  }) async {
    try {
      final userDocRef = _firestore.getCurrentUserDocRef(_firebaseAuth);

      var query = userDocRef.ticketCollection
          .orderBy('createdAt', descending: true)
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
      return left(
        await handleFirebaseError<UserTicketFailure>(
          logger: _logger,
          crashlytics: _crashlytics,
          exception: e,
          unexpectedFailure: const UserTicketFailure.unexpected(),
          permissionDeniedFailure: const UserTicketFailure.permissionDenied(),
        ),
      );
    }
  }

  @override
  Stream<Either<UserTicketFailure, Ticket>> waitForTicketToBeCreated() async* {
    final userDocRef = _firestore.getCurrentUserDocRef(_firebaseAuth);
    final ticketsQuery = userDocRef.ticketCollection
        .where('createdAt', isGreaterThan: DateTime.now())
        .orderBy('createdAt', descending: true)
        .limit(1);
    yield* ticketsQuery.snapshots().skipWhile((s) => s.docs.isEmpty).map(
      (snapshot) {
        final ticketDto = TicketDto.fromFirebase(snapshot.docs.first);
        return right<UserTicketFailure, Ticket>(ticketDto.toDomain());
      },
    ).handleError((e) {
      if (e is FirebaseException) {
        return left(
          handleFirebaseError<UserTicketFailure>(
            logger: _logger,
            crashlytics: _crashlytics,
            exception: e,
            unexpectedFailure: const UserTicketFailure.unexpected(),
            permissionDeniedFailure: const UserTicketFailure.permissionDenied(),
          ),
        );
      }
    });
  }
}
