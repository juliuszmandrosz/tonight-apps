import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:raver_events/domain/domain.dart';

abstract class PartnerEventFacade {
  Future<Either<PartnerEventFailure, Unit>> addEvent(
    Event event,
    EventTickets eventTickets,
  );

  Future<Either<PartnerEventFailure, Unit>> updateEvent(Event event);

  Future<Either<PartnerEventFailure, Option<Event>>>
      getEventInDateRangeForCurrentPartner(
    DateTime fromDate,
    DateTime toDate,
  );

  /// Returns photo url
  Future<Either<PartnerEventFailure, String>> uploadEventPhoto(
    String eventId,
    File photo,
  );
}
