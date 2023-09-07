import 'package:account_settings/account_settings.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/application/dashboard/models/tonight_event_model.dart';
import 'package:tonight/application/dashboard/models/user_stories_with_interactions.dart';
import 'package:tonight/domain/marketplace_discounts/marketplace_discount_entity.dart';

part 'dashboard_data_model.freezed.dart';

@freezed
class DashboardData with _$DashboardData {
  const factory DashboardData({
    required List<TonightEvent> tonightEvents,
    required List<MarketplaceDiscount> marketplaceDiscounts,
    required Option<UserAccount> currentUser,
    required List<UserStoriesWithInteractions> currentUserStories,
    required List<UserStoriesWithInteractions> otherUsersStories,
    required int periodNumber,
  }) = _DashboardData;

  factory DashboardData.empty() => DashboardData(
        tonightEvents: [],
        marketplaceDiscounts: [],
        currentUser: none(),
        currentUserStories: [],
        otherUsersStories: [],
        periodNumber: 0,
      );
}
