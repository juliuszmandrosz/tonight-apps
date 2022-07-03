import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:raver_events/domain/domain.dart';

abstract class PartnerEventFacade {
  Future<Either<PartnerEventFailure, Unit>> addEvent({
    required Event event,
    required EventTickets eventTickets,
    required Option<String> appliedDiscountId,
  });

  Future<Either<PartnerEventFailure, Unit>> updateEvent(Event event);

  Future<Either<PartnerEventFailure, Option<Event>>>
      getEventInDateRangeForCurrentPartner(
    DateTime fromDate,
    DateTime toDate,
  );

  /// Returns photo url
  Future<Either<PartnerEventFailure, String>> uploadEventPhoto(
    String eventId,
    String clubId,
    File photo,
  );

  Future<Either<PartnerEventFailure, Unit>> cancelEvent(String eventId);

  Future<Either<PartnerEventFailure, Unit>> postponeEvent({
    required String eventId,
    required DateTime newEventStartDateTime,
    required DateTime newEventEndDateTime,
  });
}
