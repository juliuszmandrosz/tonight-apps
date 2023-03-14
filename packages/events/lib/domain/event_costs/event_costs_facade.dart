import 'package:dartz/dartz.dart';
import 'package:events/domain/event_costs/event_costs_entity.dart';
import 'package:events/domain/event_costs/event_costs_failure.dart';
import 'package:events/events.dart';

abstract class EventCostsFacade {
  Stream<Either<EventCostsFailure, EventCosts>> getEventCosts(Event event);
}
