import 'package:account_settings/domain/user/user_account_entity.dart';
import 'package:account_settings/domain/user_account_facade.dart';
import 'package:auth/auth.dart';
import 'package:common/extensions/either_extensions.dart';
import 'package:dartz/dartz.dart';
import 'package:events/domain/domain.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tonight/application/dashboard/aggregator/dashboard_failure.dart';
import 'package:tonight/application/dashboard/models/challenge_story_with_interactions_model.dart';
import 'package:tonight/application/dashboard/models/dashboard_data_model.dart';
import 'package:tonight/application/dashboard/models/tonight_event_model.dart';
import 'package:tonight/application/dashboard/models/user_stories_with_interactions.dart';
import 'package:tonight/domain/app_settings/app_settings_facade.dart';
import 'package:tonight/domain/challenge_stories/challenge_story_entity.dart';
import 'package:tonight/domain/challenge_stories/challenge_story_facade.dart';
import 'package:tonight/domain/marketplace_discounts/marketplace_discount_entity.dart';
import 'package:tonight/domain/marketplace_discounts/marketplace_discount_facade.dart';
import 'package:tonight/domain/participants/participant_entity.dart';
import 'package:tonight/domain/participants/participant_facade.dart';
import 'package:tonight/domain/participants/participant_failure.dart';
import 'package:tonight/domain/story_interactions/story_interactions_entity.dart';
import 'package:tonight/domain/story_interactions/story_interactions_facade.dart';
import 'package:tonight/domain/tonight_vouchers/tonight_voucher_entity.dart';
import 'package:tonight/domain/tonight_vouchers/tonight_voucher_facade.dart';
import 'package:tonight/domain/tonight_vouchers/tonight_voucher_failure.dart';
import 'package:tonight/domain/user_app_links/user_app_links_entity.dart';
import 'package:tonight/domain/user_app_links/user_app_links_facade.dart';

class DashboardAggregator {
  final CommonEventFacade _eventFacade;
  final ParticipantFacade _participantFacade;
  final TonightVoucherFacade _tonightVoucherFacade;
  final UserAuthFacade _userAuthFacade;
  final MarketplaceDiscountFacade _marketplaceDiscountFacade;
  final UserAccountFacade _userAccountFacade;
  final ChallengeStoryFacade _challengeStoryFacade;
  final StoryInteractionsFacade _storyInteractionsFacade;
  final AppSettingsFacade _appSettingsFacade;
  final UserAppLinksFacade _appLinksFacade;

  DashboardAggregator(
    this._eventFacade,
    this._participantFacade,
    this._tonightVoucherFacade,
    this._userAuthFacade,
    this._marketplaceDiscountFacade,
    this._userAccountFacade,
    this._challengeStoryFacade,
    this._storyInteractionsFacade,
    this._appSettingsFacade,
    this._appLinksFacade,
  );

  Future<Either<DashboardFailure, DashboardData>> initData(
    Option<LatLng> userLocation,
  ) async {
    final appSettingsResult = await _appSettingsFacade.getAppSettings();

    if (appSettingsResult.isLeft()) {
      return left(const DashboardFailure.unexpected());
    }

    final currentChallengePeriod =
        appSettingsResult.getRightOrCrash().currentChallengePeriod;

    // TODO - change
    final results = await Future.wait([
      _eventFacade.getEvents(
        EventFilters.empty(),
        EventSortModel.empty(),
        offset: 0,
        pageSize: 5,
      ),
      _marketplaceDiscountFacade.getAvailableDiscounts(pageSize: 5),
      _userAccountFacade.getCurrentUser(),
      _challengeStoryFacade.getStories(currentChallengePeriod),
      _storyInteractionsFacade.getUserInteractions(currentChallengePeriod),
      _appLinksFacade.getUserAppLinks(),
    ]);

    if (results[0].isLeft()) {
      final failure = results[0].getLeftOrCrash() as CommonEventFailure;
      return failure.maybeWhen(
        noConnection: () => left(const DashboardFailure.noConnection()),
        orElse: () => left(const DashboardFailure.unexpected()),
      );
    }
    final failures = results.whereType<Left>().toList();
    if (failures.isNotEmpty) {
      return left(const DashboardFailure.unexpected());
    }

    final events = results[0].getRightOrCrash() as List<Event>;
    final discounts = results[1].getRightOrCrash() as List<MarketplaceDiscount>;
    final currentUser = results[2].getRightOrCrash() as Option<UserAccount>;
    final stories = results[3].getRightOrCrash() as List<ChallengeStory>;
    final interactions =
        results[4].getRightOrCrash() as List<StoryInteractions>;
    final links = results[5].getRightOrCrash() as UserAppLinks;

    final tonightEvents = await _mapEventsToTonightEvents(events);
    final storiesWithInteractions =
        _mapStoriesWithInteractions(stories, interactions);

    final data = DashboardData(
      currentUser: currentUser,
      currentUserStories: storiesWithInteractions.value1,
      otherUsersStories: storiesWithInteractions.value2,
      marketplaceDiscounts: discounts,
      tonightEvents: tonightEvents,
      periodNumber: currentChallengePeriod,
      links: links,
    );

    return right(data);
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

  Future<List<TonightEvent>> _mapEventsToTonightEvents(
    List<Event> events,
  ) async {
    List<TonightEvent> result = [];

    await Future.wait(
      events.map(
        (event) async {
          final results = await Future.wait([
            _participantFacade.fetchFirstParticipantsAndTotalCount(
              eventId: event.id,
              participantsLimit: 3,
            ),
            _tonightVoucherFacade.getVoucher(event.id),
          ]);

          final participantsResult = results[0]
              as Either<ParticipantFailure, Tuple2<List<Participant>, int>>;

          final vouchersResult = results[1]
              as Either<TonightVoucherFailure, Option<TonightVoucher>>;

          result.add(
            TonightEvent.fromDomain(
              event: event,
              participantsResult: participantsResult,
              tonightVoucherResult: vouchersResult,
              currentUserId: _userAuthFacade.getCurrentUserId(),
            ),
          );
        },
      ),
    );

    return result;
  }

  /// value 1 -  current user stories, value 2 - other users stories
  Tuple2<List<UserStoriesWithInteractions>, List<UserStoriesWithInteractions>>
      _mapStoriesWithInteractions(
    List<ChallengeStory> stories,
    List<StoryInteractions> interactions,
  ) {
    final interactionsMap = {for (var i in interactions) i.storyId: i};
    final userStoriesMap = <String, UserStoriesWithInteractions>{};
    final currentUserId = _userAuthFacade.getCurrentUserId();

    for (final story in stories) {
      final interaction =
          interactionsMap[story.id] ?? StoryInteractions.empty();

      final storyWithInteractions = ChallengeStoryWithInteractions.fromDomain(
        story: story,
        interaction: interaction,
      );

      if (userStoriesMap.containsKey(story.userId)) {
        final currentStories = userStoriesMap[story.userId]!.stories;
        userStoriesMap[story.userId] = userStoriesMap[story.userId]!.copyWith(
          stories: [...currentStories, storyWithInteractions],
        );
        continue;
      }

      userStoriesMap[story.userId] =
          UserStoriesWithInteractions.emptyFromDomain(
        challengeStory: story,
        currentUserId: currentUserId,
        challengeStoryWithInteractions: storyWithInteractions,
      );
    }

    final currentUserStories = userStoriesMap.values
        .where((story) => story.userId == currentUserId)
        .toList();

    final otherUserStories = userStoriesMap.values
        .where((story) => story.userId != currentUserId)
        .toList()
      ..sort((a, b) {
        final aHasUnseen = a.stories.any((s) => !s.seen);
        final bHasUnseen = b.stories.any((s) => !s.seen);
        return aHasUnseen == bHasUnseen ? 0 : (aHasUnseen ? -1 : 1);
      });

    return tuple2(currentUserStories, otherUserStories);
  }
}
