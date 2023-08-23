import 'package:account_settings/account_settings.dart';
import 'package:auth/auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:clubs/clubs.dart';
import 'package:common/common.dart';
import 'package:common/infrastructure/currency_params/firebase_currency_params_facade.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:events/events.dart';
import 'package:events/infrastructure/event_cloud_functions/event_cloud_functions_facade.dart';
import 'package:events/infrastructure/events_api.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_performance/firebase_performance.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:logger/logger.dart';
import 'package:payments/domain/facades/user_payment_facade.dart';
import 'package:payments/infrastructure/cloud_functions/payment_cloud_functions_facade.dart';
import 'package:payments/infrastructure/firebase_payment_facade.dart';
import 'package:rewards/domain/domain.dart';
import 'package:rewards/infrastructure/firebase_reward_facade.dart';
import 'package:tickets/infrastructure/cloud_functions/ticket_cloud_functions_facade.dart';
import 'package:tickets/tickets.dart';
import 'package:tonight/application/activate_ticket/activate_ticket_cubit.dart';
import 'package:tonight/application/activate_time_task_reward/activate_time_task_reward_cubit.dart';
import 'package:tonight/application/add_wall_photo/aggregator/add_wall_photo_aggregator/add_wall_photo_aggregator.dart';
import 'package:tonight/application/add_wall_photo/cubit/add_wall_photo_cubit.dart';
import 'package:tonight/application/app_links/terms_of_service_cubit.dart';
import 'package:tonight/application/app_settings/app_settings_cubit.dart';
import 'package:tonight/application/auth/sign_in/cubit/sign_in_cubit.dart';
import 'package:tonight/application/auth/username/username_cubit.dart';
import 'package:tonight/application/chats/aggregator/chats_aggregator.dart';
import 'package:tonight/application/chats/bloc/chats_bloc.dart';
import 'package:tonight/application/clubs/club_city_picker/club_city_picker_bloc.dart';
import 'package:tonight/application/clubs/club_details/club_details_cubit.dart';
import 'package:tonight/application/clubs/club_details/club_photos/club_photos_bloc.dart';
import 'package:tonight/application/clubs/club_list/clubs_bloc.dart';
import 'package:tonight/application/clubs/club_rewards/club_rewards_cubit.dart';
import 'package:tonight/application/core/user_location/user_location_cubit.dart';
import 'package:tonight/application/customer_email/customer_email_cubit.dart';
import 'package:tonight/application/daily_spin/daily_spin_cubit.dart';
import 'package:tonight/application/event_chat/aggregator/event_chat_aggregator.dart';
import 'package:tonight/application/event_chat/bloc/event_chat_bloc.dart';
import 'package:tonight/application/event_participants/event_participants_bloc.dart';
import 'package:tonight/application/event_photos/event_photos_bloc.dart';
import 'package:tonight/application/event_review/event_review_cubit.dart';
import 'package:tonight/application/event_room/aggregator/event_room_aggregator.dart';
import 'package:tonight/application/event_room/bloc/event_room_bloc.dart';
import 'package:tonight/application/event_room_participants/event_room_participants_bloc.dart';
import 'package:tonight/application/events/event_city_picker/event_city_picker_bloc.dart';
import 'package:tonight/application/events/event_date_picker/event_date_picker_cubit.dart';
import 'package:tonight/application/events/event_details/event_details_cubit.dart';
import 'package:tonight/application/events/event_favorite/event_favorite_cubit.dart';
import 'package:tonight/application/events/event_filters/event_filters_cubit.dart';
import 'package:tonight/application/events/event_list/events_bloc.dart';
import 'package:tonight/application/events/event_tickets/event_tickets_cubit.dart';
import 'package:tonight/application/invoice_data/invoice_data_cubit.dart';
import 'package:tonight/application/marketplace_discount_details/marketplace_discount_details_cubit.dart';
import 'package:tonight/application/marketplace_discounts/marketplace_discounts_bloc.dart';
import 'package:tonight/application/onboarding/onboarding_cubit.dart';
import 'package:tonight/application/onboarding_user_details/onboarding_user_details_cubit.dart';
import 'package:tonight/application/payment_method/payment_method_cubit.dart';
import 'package:tonight/application/profile/profile_bloc.dart';
import 'package:tonight/application/push_notifications/push_notifications_cubit.dart';
import 'package:tonight/application/redeem_tonight_voucher/redeem_tonight_voucher_cubit.dart';
import 'package:tonight/application/select_club/select_club_bloc.dart';
import 'package:tonight/application/sign_in_with_phone_number/sign_in_with_phone_number_cubit.dart';
import 'package:tonight/application/ticket_checkout/aggregator/ticket_checkout_aggregator.dart';
import 'package:tonight/application/ticket_checkout/bloc/ticket_checkout_bloc.dart';
import 'package:tonight/application/tickets/tickets_bloc.dart';
import 'package:tonight/application/tonight/tonight_cubit.dart';
import 'package:tonight/application/tonight_events/aggregator/tonight_events_aggregator.dart';
import 'package:tonight/application/tonight_events/bloc/tonight_events_bloc.dart';
import 'package:tonight/application/update_profile_picture/update_profile_picture_cubit.dart';
import 'package:tonight/application/user_city_picker/user_city_picker_bloc.dart';
import 'package:tonight/application/user_details/user_details_cubit.dart';
import 'package:tonight/application/user_wall_photo_preview/user_wall_photo_preview_cubit.dart';
import 'package:tonight/application/verify_phone_number/verify_phone_number_cubit.dart';
import 'package:tonight/application/vouchers/aggregator/vouchers_aggregator.dart';
import 'package:tonight/application/vouchers/bloc/vouchers_bloc.dart';
import 'package:tonight/application/wall_photos/wall_photos_bloc.dart';
import 'package:tonight/application/wall_photos_filters/wall_photos_filters_cubit.dart';
import 'package:tonight/domain/club_rewards/club_rewards_aggregator.dart';
import 'package:tonight/domain/daily_spin/daily_spin_facade.dart';
import 'package:tonight/domain/event_review/event_review_aggregator.dart';
import 'package:tonight/domain/festivals/festival_facade.dart';
import 'package:tonight/domain/marketplace_discounts/marketplace_discount_facade.dart';
import 'package:tonight/domain/messages/message_facade.dart';
import 'package:tonight/domain/participants/participant_facade.dart';
import 'package:tonight/domain/places/places_facade.dart';
import 'package:tonight/domain/rooms/room_facade.dart';
import 'package:tonight/domain/time_task_vouchers/time_task_voucher_facade.dart';
import 'package:tonight/domain/time_tasks/time_task_facade.dart';
import 'package:tonight/domain/tonight_vouchers/tonight_voucher_facade.dart';
import 'package:tonight/domain/user_app_links/user_app_links_facade.dart';
import 'package:tonight/domain/user_details/user_details_aggregator.dart';
import 'package:tonight/domain/user_marketplace_discounts/user_marketplace_discount_facade.dart';
import 'package:tonight/domain/user_profile/user_profile_aggregator.dart';
import 'package:tonight/domain/user_tonight_vouchers/user_tonight_voucher_facade.dart';
import 'package:tonight/domain/wall_photos/wall_photo_facade.dart';
import 'package:tonight/infrastructure/daily_spin/firebase_daily_spin_facade.dart';
import 'package:tonight/infrastructure/festivals/firebase_festival_facade.dart';
import 'package:tonight/infrastructure/google_places/google_places_facade.dart';
import 'package:tonight/infrastructure/marketplace_discounts/firebase_marketplace_discounts_facade.dart';
import 'package:tonight/infrastructure/messages/firebase_message_facade.dart';
import 'package:tonight/infrastructure/participants/firebase_participant_facade.dart';
import 'package:tonight/infrastructure/rooms/firebase_room_facade.dart';
import 'package:tonight/infrastructure/time_task_vouchers/firebase_time_task_voucher_facade.dart';
import 'package:tonight/infrastructure/time_tasks/firebase_time_task_facade.dart';
import 'package:tonight/infrastructure/tonight_vouchers/firebase_tonight_voucher_facade.dart';
import 'package:tonight/infrastructure/user_app_links/firebase_user_app_links_facade.dart';
import 'package:tonight/infrastructure/user_marketplace_discounts/firebase_user_marketplace_discount_facade.dart';
import 'package:tonight/infrastructure/user_tonight_vouchers/firebase_user_tonight_voucher_facade.dart';
import 'package:tonight/infrastructure/wall_photos/firebase_wall_photo_facade.dart';

import 'application/clubs/club_details/club_reviews/club_reviews_bloc.dart';
import 'application/clubs/club_favorite/club_favorite_cubit.dart';

final GetIt getIt = GetIt.instance;

void registerDependencies() {
  _registerFacades();
  _registerAggregators();
  _registerCubits();
  _registerModules();
}

void _registerCubits() {
  //Core
  getIt.registerFactory(
    () => AvailableFiltersCubit(
      getIt(),
    ),
  );

  getIt.registerLazySingleton(
    () => UserLocationCubit(
      getIt(),
    ),
  );

  //Auth
  getIt.registerFactory(
    () => AuthCubit(
      getIt(),
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => SignInCubit(
      getIt(),
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => UsernameCubit(
      getIt(),
    ),
  );

  //Clubs
  getIt.registerFactory(
    () => ClubPhotosBloc(
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => ClubsBloc(
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => ClubCityPickerBloc(),
  );

  getIt.registerFactory(
    () => ClubDetailsCubit(
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => ClubFavoriteCubit(
      getIt(),
    ),
  );

  //Event ticket pools
  getIt.registerFactory(
    () => EventTicketsCubit(
      getIt(),
    ),
  );

  //Reviews
  getIt.registerFactory(
    () => EventReviewCubit(
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => ClubReviewsBloc(
      getIt(),
    ),
  );

  //Events
  getIt.registerFactory(
    () => EventDetailsCubit(
      getIt(),
      getIt(),
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => EventFavoriteCubit(
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => EventsBloc(
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => EventFiltersCubit(),
  );

  getIt.registerFactory(
    () => EventCityPickerBloc(),
  );

  getIt.registerFactory(
    () => EventDatePickerCubit(),
  );

  //Network Check
  getIt.registerFactory(
    () => NetworkCheckCubit(
      getIt(),
    ),
  );

  //App info
  getIt.registerFactory(() => AppInfoCubit());

  //Profile
  getIt.registerFactory(
    () => ProfileBloc(
      getIt(),
    ),
  );

  //App settings
  getIt.registerFactory(() => AppSettingsCubit());

  //Rewards
  getIt.registerFactory(
    () => ClubRewardsCubit(
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => InvoiceDataCubit(
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => PushNotificationsCubit(
      firebaseMessaging: getIt(),
      flutterLocalNotificationsPlugin: getIt(),
      userAccountFacade: getIt(),
    ),
  );

  getIt.registerFactory(
    () => AppLinksCubit(
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => PaymentMethodCubit(
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => OnboardingUserDetailsCubit(
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => UpdateProfilePictureCubit(
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => WallPhotosBloc(
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => UserDetailsCubit(
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => SelectClubBloc(
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => AddWallPhotoCubit(
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => TonightEventsBloc(
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => EventChatBloc(
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => EventParticipantsBloc(
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => EventRoomBloc(
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => EventPhotosBloc(
      getIt(),
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => EventRoomParticipantsBloc(
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => VerifyPhoneNumberCubit(
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => SignInWithPhoneNumberCubit(
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => UserWallPhotoPreviewCubit(
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => WallPhotosFiltersCubit(),
  );

  getIt.registerFactory(
    () => TonightCubit(),
  );

  getIt.registerFactory(
    () => ChatsBloc(
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => DailySpinCubit(
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => ActivateTimeTaskRewardCubit(
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => RedeemTonightVoucherCubit(
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => VouchersBloc(
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => UserCityPickerBloc(
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => OnboardingCubit(
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => ActivateTicketCubit(
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => TicketsBloc(
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => TicketCheckoutBloc(
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => CustomerEmailCubit(
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => MarketplaceDiscountsBloc(
      getIt(),
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => MarketplaceDiscountDetailsCubit(
      getIt(),
    ),
  );
}

void _registerFacades() {
  //Core
  getIt.registerLazySingleton<AvailableFiltersFacade>(
    () => FirebaseAvailableFiltersFacade(
      firestore: getIt(),
      crashlytics: getIt(),
      logger: getIt(),
    ),
  );

  //Auth
  getIt.registerLazySingleton<CommonAuthFacade>(
    () => FirebaseAuthFacade(
      firebaseAuth: getIt(),
      googleSignIn: getIt(),
      logger: getIt(),
      authCloudFunctionsFacade: getIt(),
      crashlytics: getIt(),
      firestore: getIt(),
    ),
  );

  getIt.registerLazySingleton<UserAuthFacade>(
    () => FirebaseUserAuthFacade(
      firebaseAuth: getIt(),
      googleSignIn: getIt(),
      logger: getIt(),
      authCloudFunctionsFacade: getIt(),
      crashlytics: getIt(),
      firestore: getIt(),
    ),
  );

  getIt.registerLazySingleton<AuthCloudFunctionsFacade>(
    () => AuthCloudFunctionsFacadeImpl(
      getIt(),
    ),
  );

  //Club
  getIt.registerLazySingleton<UserClubFacade>(
    () => FirebaseClubFacade(
      firestore: getIt(),
      firebaseStorage: getIt(),
      logger: getIt(),
      clubsApi: getIt(),
      firebaseAuth: getIt(),
      cloudFunctionsFacade: getIt(),
      crashlytics: getIt(),
    ),
  );

  getIt.registerLazySingleton<UserTicketFacade>(
    () => FirebaseTicketFacade(
      firestore: getIt(),
      logger: getIt(),
      ticketCloudFunctionsFacade: getIt(),
      firebaseAuth: getIt(),
      crashlytics: getIt(),
    ),
  );

  //Reviews
  getIt.registerLazySingleton<UserReviewFacade>(
    () => FirebaseReviewFacade(
      firestore: getIt(),
      logger: getIt(),
      firebaseAuth: getIt(),
      crashlytics: getIt(),
    ),
  );

  getIt.registerLazySingleton<TicketCloudFunctionsFacade>(
    () => TicketCloudFunctionsFacadeImpl(
      firebaseFunctions: getIt(),
    ),
  );

  //Event
  getIt.registerLazySingleton<UserEventFacade>(
    () => FirebaseEventFacade(
      firestore: getIt(),
      eventsApi: getIt(),
      logger: getIt(),
      firebaseAuth: getIt(),
      storage: getIt(),
      eventCloudFunctionsFacade: getIt(),
      crashlytics: getIt(),
    ),
  );

  //Event tickets
  getIt.registerLazySingleton<UserEventTicketsFacade>(
    () => FirebaseEventTicketsFacade(
      firestore: getIt(),
      logger: getIt(),
      crashlytics: getIt(),
    ),
  );

  getIt.registerLazySingleton<CommonEventFacade>(
    () => FirebaseEventFacade(
      firestore: getIt(),
      eventsApi: getIt(),
      logger: getIt(),
      firebaseAuth: getIt(),
      storage: getIt(),
      eventCloudFunctionsFacade: getIt(),
      crashlytics: getIt(),
    ),
  );

  //Payment
  getIt.registerLazySingleton<UserPaymentFacade>(
    () => FirebasePaymentFacade(
      firestore: getIt(),
      logger: getIt(),
      paymentCloudFunctionsFacade: getIt(),
      firebaseAuth: getIt(),
      stripe: getIt(),
      firebaseCrashlytics: getIt(),
    ),
  );

  getIt.registerLazySingleton<PaymentCloudFunctionsFacade>(
    () => PaymentCloudFunctionsFacadeImpl(
      firebaseFunctions: getIt(),
      dio: getIt(),
    ),
  );

  //Profile
  getIt.registerLazySingleton<UserAccountFacade>(
    () => FirebaseAccountFacade(
      firestore: getIt(),
      logger: getIt(),
      firebaseAuth: getIt(),
      firebaseCrashlytics: getIt(),
      firebaseStorage: getIt(),
    ),
  );

  //Cloud functions
  getIt.registerLazySingleton<ClubCloudFunctionsFacade>(
    () => ClubCloudFunctionsFacadeImpl(
      getIt(),
    ),
  );

  //Rewards
  getIt.registerLazySingleton<UserRewardFacade>(
    () => FirebaseRewardFacade(
      firebaseAuth: getIt(),
      firestore: getIt(),
      logger: getIt(),
      crashlytics: getIt(),
    ),
  );

  getIt.registerLazySingleton<EventCloudFunctionsFacade>(
    () => EventCloudFunctionsFacadeImpl(
      getIt(),
    ),
  );

  getIt.registerLazySingleton<CurrencyParamsFacade>(
    () => FirebaseCurrencyParamsFacade(
      firestore: getIt(),
      logger: getIt(),
      crashlytics: getIt(),
    ),
  );

  getIt.registerLazySingleton<UserAppLinksFacade>(
    () => FirebaseUserAppLinksFacade(
      getIt(),
      getIt(),
      getIt(),
    ),
  );

  getIt.registerLazySingleton<PlacesFacade>(
    () => GooglePlacesFacade(
      dio: getIt(),
      logger: getIt(),
      firebaseCrashlytics: getIt(),
    ),
  );

  getIt.registerLazySingleton<WallPhotoFacade>(
    () => FirebaseWallPhotoFacade(
      getIt(),
      getIt(),
      getIt(),
      getIt(),
      getIt(),
      getIt(),
    ),
  );

  getIt.registerLazySingleton<MessageFacade>(
    () => FirebaseMessageFacade(
      getIt(),
      getIt(),
      getIt(),
      getIt(),
    ),
  );

  getIt.registerLazySingleton<ParticipantFacade>(
    () => FirebaseParticipantFacade(
      getIt(),
      getIt(),
      getIt(),
    ),
  );

  getIt.registerLazySingleton<FestivalFacade>(
    () => FirebaseFestivalFacade(),
  );

  getIt.registerLazySingleton<RoomFacade>(
    () => FirebaseRoomFacade(
      getIt(),
      getIt(),
      getIt(),
      getIt(),
    ),
  );

  getIt.registerLazySingleton<DailySpinFacade>(
    () => FirebaseDailySpinFacade(
      getIt(),
      getIt(),
      getIt(),
      getIt(),
    ),
  );

  getIt.registerLazySingleton<TimeTaskFacade>(
    () => FirebaseTimeTaskFacade(
      getIt(),
      getIt(),
      getIt(),
    ),
  );

  getIt.registerLazySingleton<TimeTaskVoucherFacade>(
    () => FirebaseTimeTaskVoucherFacade(
      getIt(),
      getIt(),
      getIt(),
      getIt(),
    ),
  );

  getIt.registerLazySingleton<TonightVoucherFacade>(
    () => FirebaseTonightVoucherFacade(
      getIt(),
      getIt(),
      getIt(),
      getIt(),
    ),
  );

  getIt.registerLazySingleton<UserTonightVoucherFacade>(
    () => FirebaseUserTonightVoucherFacade(
      getIt(),
      getIt(),
      getIt(),
      getIt(),
    ),
  );

  getIt.registerLazySingleton<MarketplaceDiscountFacade>(
    () => FirebaseMarketplaceDiscountFacade(
      getIt(),
      getIt(),
      getIt(),
    ),
  );

  getIt.registerLazySingleton<UserMarketplaceDiscountFacade>(
    () => FirebaseUserMarketplaceDiscountFacade(
      getIt(),
      getIt(),
      getIt(),
      getIt(),
      getIt(),
    ),
  );
}

void _registerAggregators() {
  getIt.registerLazySingleton(
    () => UserDetailsAggregator(
      getIt(),
      getIt(),
    ),
  );

  getIt.registerLazySingleton(
    () => UserProfileAggregator(
      getIt(),
      getIt(),
    ),
  );

  getIt.registerLazySingleton(
    () => ClubRewardsAggregator(
      getIt(),
      getIt(),
    ),
  );

  getIt.registerLazySingleton(
    () => EventReviewAggregator(
      accountFacade: getIt(),
      reviewFacade: getIt(),
      eventFacade: getIt(),
    ),
  );

  getIt.registerLazySingleton(
    () => EventRoomAggregator(
      getIt(),
      getIt(),
      getIt(),
    ),
  );

  getIt.registerLazySingleton(
    () => EventChatAggregator(
      getIt(),
      getIt(),
    ),
  );

  getIt.registerLazySingleton(
    () => TonightEventsAggregator(
      getIt(),
      getIt(),
      getIt(),
      getIt(),
    ),
  );

  getIt.registerLazySingleton(
    () => AddWallPhotoAggregator(
      getIt(),
      getIt(),
      getIt(),
      getIt(),
    ),
  );

  getIt.registerLazySingleton(
    () => ChatsAggregator(
      getIt(),
    ),
  );

  getIt.registerLazySingleton(
    () => VouchersAggregator(
      getIt(),
      getIt(),
    ),
  );

  getIt.registerLazySingleton(
    () => TicketCheckoutAggregator(
      getIt(),
      getIt(),
      getIt(),
      getIt(),
    ),
  );
}

void _registerModules() {
  getIt.registerLazySingleton(() => GoogleSignIn());

  getIt.registerLazySingleton(() => FirebaseFirestore.instance);

  getIt.registerLazySingleton(() => FirebaseStorage.instance);

  getIt.registerLazySingleton(() => FirebaseAuth.instance);

  getIt.registerLazySingleton(() => FirebaseMessaging.instance);

  getIt.registerLazySingleton(() => FirebaseAnalytics.instance);

  getIt.registerLazySingleton(
      () => FirebaseFunctions.instanceFor(region: 'europe-central2'));

  getIt.registerLazySingleton(() => FirebaseDynamicLinks.instance);

  getIt.registerLazySingleton(() => FirebasePerformance.instance);

  getIt.registerLazySingleton(crashlyticsConfig);

  getIt.registerLazySingleton<EventsApi>(
    () => EventsApiImpl(
      getIt(),
    ),
  );

  getIt.registerLazySingleton<ClubsApi>(
    () => ClubsApiImpl(
      getIt(),
    ),
  );

  getIt.registerLazySingleton(() => GeolocatorPlatform.instance);

  getIt.registerLazySingleton(() => Stripe.instance);

  getIt.registerLazySingleton(() => Connectivity());

  getIt.registerLazySingleton(() => Logger());

  getIt.registerLazySingleton(() => FlutterLocalNotificationsPlugin());

  getIt.registerLazySingleton(dioConfig);
}
