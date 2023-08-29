import 'package:account_settings/domain/user/user_account_entity.dart';
import 'package:account_settings/domain/user_account_facade.dart';
import 'package:account_settings/domain/user_account_failure.dart';
import 'package:auth/auth.dart';
import 'package:common/extensions/either_extensions.dart';
import 'package:dartz/dartz.dart';
import 'package:events/domain/events/event_entity.dart';
import 'package:events/domain/events/failures/user_event_failure.dart';
import 'package:events/domain/events/user_event_facade.dart';
import 'package:events/domain/filters/event_filters_entity.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tonight/application/dashboard/aggregator/dashboard_failure.dart';
import 'package:tonight/application/dashboard/models/dashboard_data.dart';
import 'package:tonight/application/dashboard/models/tonight_event_model.dart';
import 'package:tonight/domain/marketplace_discounts/marketplace_discount_entity.dart';
import 'package:tonight/domain/marketplace_discounts/marketplace_discount_facade.dart';
import 'package:tonight/domain/marketplace_discounts/marketplace_discount_failure.dart';
import 'package:tonight/domain/participants/participant_entity.dart';
import 'package:tonight/domain/participants/participant_facade.dart';
import 'package:tonight/domain/participants/participant_failure.dart';
import 'package:tonight/domain/tonight_vouchers/tonight_voucher_entity.dart';
import 'package:tonight/domain/tonight_vouchers/tonight_voucher_facade.dart';
import 'package:tonight/domain/tonight_vouchers/tonight_voucher_failure.dart';

class DashboardAggregator {
  final UserEventFacade _eventFacade;
  final ParticipantFacade _participantFacade;
  final TonightVoucherFacade _tonightVoucherFacade;
  final UserAuthFacade _userAuthFacade;
  final MarketplaceDiscountFacade _marketplaceDiscountFacade;
  final UserAccountFacade _userAccountFacade;

  DashboardAggregator(
    this._eventFacade,
    this._participantFacade,
    this._tonightVoucherFacade,
    this._userAuthFacade,
    this._marketplaceDiscountFacade,
    this._userAccountFacade,
  );

  Future<DashboardData> initData(
    Option<LatLng> userLocation,
  ) async {
    final results = await Future.wait([
      _eventFacade.fetchTonightEvents(userLocation),
      _marketplaceDiscountFacade.getAvailableDiscounts(pageSize: 5),
      _userAccountFacade.getUserAccount().first,
    ]);

    final eventsResult = results[0] as Either<UserEventFailure, List<Event>>;
    final discountsResult = results[1]
        as Either<MarketplaceDiscountFailure, List<MarketplaceDiscount>>;
    final userAccountResult =
        results[2] as Either<UserAccountFailure, UserAccount>;

    final events = await _mapEventsResultToDashboardData(eventsResult);
    final discounts = _mapDiscountsResultToDashboardData(discountsResult);
    final raverCoins = _mapUserAccountResultToDashboardData(userAccountResult);

    return DashboardData(
      tonightEvents: events,
      marketplaceDiscounts: discounts,
      availableRaverCoins: raverCoins,
    );
  }

  Future<Either<DashboardFailure, List<TonightEvent>>>
      fetchTonightEventsFromVenues({
    required EventFilters filters,
    int pageSize = 10,
    int offset = 0,
  }) async {
    final eventsResult = await _eventFacade.fetchTonightEventsFromVenues(
      filters: filters,
      pageSize: pageSize,
      offset: offset,
    );
    if (eventsResult.isLeft()) {
      return eventsResult.getLeftOrCrash().maybeMap(
            noConnection: (_) => left(
              const DashboardFailure.noConnection(),
            ),
            orElse: () => left(const DashboardFailure.unexpected()),
          );
    }

    final events = eventsResult.getRightOrCrash();

    final result = await _mapEventsToTonightEvents(events);

    return right(result);
  }

  Future<Either<DashboardFailure, Either<List<TonightEvent>, DateTime?>>>
      fetchTonightEventsOrNearestEventStartDateTime({
    required EventFilters filters,
    int pageSize = 10,
  }) async {
    final eventsResult = await _eventFacade.fetchTonightEventsFromVenues(
      filters: filters,
      pageSize: pageSize,
    );
    if (eventsResult.isLeft()) {
      return eventsResult.getLeftOrCrash().maybeMap(
            noConnection: (_) => left(
              const DashboardFailure.noConnection(),
            ),
            orElse: () => left(const DashboardFailure.unexpected()),
          );
    }

    final events = eventsResult.getRightOrCrash();

    if (events.isEmpty) {
      final nearestEventResult = await _getNearestEventStartDateTime(
        filters.maxDistanceFilter.userLocation,
      );
      return nearestEventResult.fold(
        (failure) => left(failure),
        (dateTime) => right(right(dateTime)),
      );
    }

    final result = await _mapEventsToTonightEvents(events);

    return right(left(result));
  }

  Future<Either<DashboardFailure, Unit>> useVoucher(String eventId) async {
    final result = await _tonightVoucherFacade.useVoucher(eventId);
    return result.fold(
      (failure) => failure.map(
        unexpected: (_) => left(const DashboardFailure.unexpected()),
        voucherAlreadyUsedTonight: (_) => left(
          const DashboardFailure.voucherAlreadyUsedTonight(),
        ),
        voucherAlreadyUsedOnEvent: (_) => left(
          const DashboardFailure.voucherAlreadyUsedOnEvent(),
        ),
        voucherExpired: (_) => left(
          const DashboardFailure.voucherExpired(),
        ),
        voucherUsageLimitReached: (_) => left(
          const DashboardFailure.voucherUsageLimitReached(),
        ),
      ),
      (_) => right(unit),
    );
  }

  Future<Either<DashboardFailure, DateTime?>> _getNearestEventStartDateTime(
    Option<LatLng> userLocation,
  ) async {
    final result =
        await _eventFacade.getNearestEventStartDateTime(userLocation);
    return result.fold(
      (failure) => failure.maybeWhen(
        noConnection: () => left(const DashboardFailure.noConnection()),
        orElse: () => left(const DashboardFailure.unexpected()),
      ),
      (dateTime) => right(dateTime),
    );
  }

  Future<Either<DashboardFailure, List<TonightEvent>>>
      _mapEventsResultToDashboardData(
    Either<UserEventFailure, List<Event>> result,
  ) async {
    if (result.isLeft()) {
      return result.getLeftOrCrash().maybeMap(
            noConnection: (_) => left(
              const DashboardFailure.noConnection(),
            ),
            orElse: () => left(const DashboardFailure.unexpected()),
          );
    }
    final events = result.getRightOrCrash();
    return right(await _mapEventsToTonightEvents(events));
  }

  Either<DashboardFailure, List<MarketplaceDiscount>>
      _mapDiscountsResultToDashboardData(
    Either<MarketplaceDiscountFailure, List<MarketplaceDiscount>> result,
  ) {
    if (result.isLeft()) {
      return left(const DashboardFailure.unexpected());
    }
    final discounts = result.getRightOrCrash();
    return right(discounts);
  }

  Either<DashboardFailure, int> _mapUserAccountResultToDashboardData(
    Either<UserAccountFailure, UserAccount> result,
  ) {
    if (result.isLeft()) {
      return left(const DashboardFailure.unexpected());
    }
    final userAccount = result.getRightOrCrash();
    return right(userAccount.raverCoins);
  }

  Future<List<TonightEvent>> _mapEventsToTonightEvents(List<Event> events) {
    return Future.wait(
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
  }
}
