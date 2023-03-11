import 'package:dartz/dartz.dart';
import 'package:raver_events/domain/event_costs/event_costs_entity.dart';
import 'package:raver_events/domain/event_costs/event_costs_failure.dart';
import 'package:raver_events/raver_events.dart';

abstract class EventCostsFacade {
  Stream<Either<EventCostsFailure, EventCosts>> getEventCosts(Event event);
}
