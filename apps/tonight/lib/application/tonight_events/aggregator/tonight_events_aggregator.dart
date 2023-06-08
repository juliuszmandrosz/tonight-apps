import 'package:auth/auth.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:events/domain/domain.dart';
import 'package:tonight/application/tonight_events/aggregator/tonight_events_failure.dart';
import 'package:tonight/application/tonight_events/models/tonight_event_model.dart';
import 'package:tonight/domain/participants/participant_entity.dart';
import 'package:tonight/domain/participants/participant_facade.dart';
import 'package:tonight/domain/participants/participant_failure.dart';
import 'package:tonight/domain/tonight_vouchers/tonight_voucher_entity.dart';
import 'package:tonight/domain/tonight_vouchers/tonight_voucher_facade.dart';
import 'package:tonight/domain/tonight_vouchers/tonight_voucher_failure.dart';

class TonightEventsAggregator {
  final UserEventFacade _eventFacade;
  final ParticipantFacade _participantFacade;
  final TonightVoucherFacade _tonightVoucherFacade;
  final UserAuthFacade _userAuthFacade;

  TonightEventsAggregator(
    this._eventFacade,
    this._participantFacade,
    this._tonightVoucherFacade,
    this._userAuthFacade,
  );

  Future<Either<TonightEventsFailure, List<TonightEvent>>> fetchTonightEvents({
    required EventFilters filters,
    int pageSize = 10,
    int offset = 0,
  }) async {
    final eventsResult = await _eventFacade.fetchTonightEvents(
      filters: filters,
      pageSize: pageSize,
      offset: offset,
    );
    if (eventsResult.isLeft()) {
      return eventsResult.getLeftOrCrash().maybeMap(
            noConnection: (_) => left(
              const TonightEventsFailure.noConnection(),
            ),
            orElse: () => left(const TonightEventsFailure.unexpected()),
          );
    }

    final events = eventsResult.getRightOrCrash();

    final result = await Future.wait(
      events.map((event) async {
        final results = await Future.wait(
          [
            _participantFacade.fetchFirstParticipantsAndTotalCount(
              eventId: event.id,
              participantsLimit: 3,
            ),
            _tonightVoucherFacade.getVoucher(event.id),
          ],
        );

        final participantsResult = results[0]
            as Either<ParticipantFailure, Tuple2<List<Participant>, int>>;

        final vouchersResult =
            results[1] as Either<TonightVoucherFailure, Option<TonightVoucher>>;

        return TonightEvent.fromDomain(
          event: event,
          participantsResult: participantsResult,
          tonightVoucherResult: vouchersResult,
          currentUserId: _userAuthFacade.getCurrentUserId(),
        );
      }),
    );

    return right(result);
  }

  Future<Either<TonightEventsFailure, Unit>> useVoucher(String eventId) async {
    final result = await _tonightVoucherFacade.useVoucher(eventId);
    return result.fold(
      (failure) => failure.map(
        unexpected: (_) => left(const TonightEventsFailure.unexpected()),
        voucherAlreadyUsedTonight: (_) => left(
          const TonightEventsFailure.voucherAlreadyUsedTonight(),
        ),
        voucherAlreadyUsedOnEvent: (_) => left(
          const TonightEventsFailure.voucherAlreadyUsedOnEvent(),
        ),
        voucherExpired: (_) => left(
          const TonightEventsFailure.voucherExpired(),
        ),
        voucherUsageLimitReached: (_) => left(
          const TonightEventsFailure.voucherUsageLimitReached(),
        ),
      ),
      (_) => right(unit),
    );
  }
}
