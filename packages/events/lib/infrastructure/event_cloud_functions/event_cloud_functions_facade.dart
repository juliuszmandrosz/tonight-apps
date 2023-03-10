import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:dartz/dartz.dart';
import 'package:raver_events/infrastructure/event_cloud_functions/event_cloud_functions_names.dart';

abstract class EventCloudFunctionsFacade {
  Future<Unit> cancelEvent(String eventId);

  Future<Unit> postponeEvent({
    required String eventId,
    required Timestamp newEventStartTimestamp,
    required Timestamp newEventEndTimestamp,
  });
}

class EventCloudFunctionsFacadeImpl implements EventCloudFunctionsFacade {
  final FirebaseFunctions _firebaseFunctions;

  EventCloudFunctionsFacadeImpl(this._firebaseFunctions);

  @override
  Future<Unit> cancelEvent(String eventId) async {
    final cancelEventFn = _firebaseFunctions.httpsCallable(cancelEventFnName);

    await cancelEventFn.call({'eventId': eventId});

    return unit;
  }

  @override
  Future<Unit> postponeEvent({
    required String eventId,
    required Timestamp newEventStartTimestamp,
    required Timestamp newEventEndTimestamp,
  }) async {
    final postponeEventFn =
        _firebaseFunctions.httpsCallable(postponeEventFnName);

    await postponeEventFn.call({
      'eventId': eventId,
      'newEventStartTimestamp': newEventStartTimestamp.millisecondsSinceEpoch,
      'newEventEndTimestamp': newEventEndTimestamp.millisecondsSinceEpoch,
    });

    return unit;
  }
}
