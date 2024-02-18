import 'package:auth/auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:clubs/clubs.dart';
import 'package:common/common.dart';
import 'package:common/infrastructure/currency_params/firebase_currency_params_facade.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:events/domain/event_costs/event_costs_facade.dart';
import 'package:events/events.dart';
import 'package:events/infrastructure/event_cloud_functions/event_cloud_functions_facade.dart';
import 'package:events/infrastructure/event_costs/firebase_event_costs_facade.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:firebase_performance/firebase_performance.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:logger/logger.dart';
import 'package:payments/domain/domain.dart';
import 'package:payments/infrastructure/cloud_functions/payment_cloud_functions_facade.dart';
import 'package:payments/infrastructure/firebase_payment_facade.dart';
import 'package:rewards/rewards.dart';
import 'package:tonight_partners/application/add_edit_reward/add_reward_cubit.dart';
import 'package:tonight_partners/application/add_edit_ticket_pool/add_edit_ticket_pool_cubit.dart';
import 'package:tonight_partners/application/add_event/add_event_cubit.dart';
import 'package:tonight_partners/application/club_info/club_info_cubit.dart';
import 'package:tonight_partners/application/discounts/discounts_cubit.dart';
import 'package:tonight_partners/application/event_filters/event_filters_cubit.dart';
import 'package:tonight_partners/application/event_notifier/event_notifier_cubit.dart';
import 'package:tonight_partners/application/invite_selector/invite_selector_cubit.dart';
import 'package:tonight_partners/application/overview/overview_cubit.dart';
import 'package:tonight_partners/application/past_event_details/past_event_details_cubit.dart';
import 'package:tonight_partners/application/postpone_event/postpone_event_cubit.dart';
import 'package:tonight_partners/application/privacy_policy/privacy_policy_cubit.dart';
import 'package:tonight_partners/application/reward_list/reward_list_cubit.dart';
import 'package:tonight_partners/application/selector_list/selector_list_cubit.dart';
import 'package:tonight_partners/application/sign_in/sign_in_cubit.dart';
import 'package:tonight_partners/application/upcoming_live_event/upcoming_live_event_cubit.dart';
import 'package:tonight_partners/application/welcome_loader/welcome_loader_cubit.dart';
import 'package:tonight_partners/domain/club_sales/club_sales_facade.dart';
import 'package:tonight_partners/domain/discounts/discount_facade.dart';
import 'package:tonight_partners/domain/selector_management/selector_management_facade.dart';
import 'package:tonight_partners/infrastructure/club_sales/firebase_club_sales_facade.dart';
import 'package:tonight_partners/infrastructure/discounts/firebase_discount_facade.dart';
import 'package:tonight_partners/infrastructure/selector_management/cloud_functions/selector_cloud_functions_facade.dart';
import 'package:tonight_partners/infrastructure/selector_management/firebase_selector_management_facade.dart';

final GetIt getIt = GetIt.instance;

void registerDependencies() {
  _registerFacades();
  _registerCubits();
  _registerModules();
}

void _registerCubits() {
  getIt.registerFactory(
    () => AuthCubit(
      getIt(),
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => SignInCubit(
      firebaseDynamicLinks: getIt(),
      partnerAuthFacade: getIt(),
    ),
  );

  getIt.registerLazySingleton(
    () => EventNotifierCubit(),
  );

  getIt.registerFactory(
    () => EventOverviewBloc(
      getIt(),
    ),
  );

  getIt.registerFactoryParam(
    (EventOverviewBloc eventListBloc, _) => EventFiltersCubit(eventListBloc),
  );

  getIt.registerFactoryParam(
    (
      EventNotifierCubit eventNotifierCubit,
      ClubInfoCubit clubInfoCubit,
    ) =>
        AddEventCubit(
      clubInfoCubit: clubInfoCubit,
      eventNotifierCubit: eventNotifierCubit,
      discountFacade: getIt(),
      eventFacade: getIt(),
      partnerPaymentFacade: getIt(),
    ),
  );

  getIt.registerFactory(
    () => AvailableFiltersCubit(
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => ClubInfoCubit(
      clubFacade: getIt(),
      currencyParamsFacade: getIt(),
    ),
  );

  getIt.registerFactory(
    () => AddRewardCubit(
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => RewardListCubit(
      getIt(),
    ),
  );

  getIt.registerFactoryParam(
    (ClubInfoCubit clubInfoCubit, _) => AddEditTicketPoolCubit(
      clubInfoCubit: clubInfoCubit,
    ),
  );

  getIt.registerFactoryParam(
    (EventNotifierCubit eventNotifierCubit, _) => UpcomingLiveEventCubit(
      eventTicketsFacade: getIt(),
      eventFacade: getIt(),
      eventNotifierCubit: eventNotifierCubit,
      eventCostsFacade: getIt(),
    ),
  );

  getIt.registerFactory(
    () => PastEventDetailsCubit(
      partnerEventReviewFacade: getIt(),
      partnerEventTicketsFacade: getIt(),
      partnerReviewFacade: getIt(),
    ),
  );

  getIt.registerFactory(
    () => InviteSelectorCubit(
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => SelectorListCubit(
      getIt(),
    ),
  );

  getIt.registerFactoryParam(
    (EventNotifierCubit eventNotifierCubit, _) => PostponeEventCubit(
      eventNotifierCubit: eventNotifierCubit,
      partnerEventFacade: getIt(),
      eventCostsFacade: getIt(),
    ),
  );

  getIt.registerLazySingleton(
    () => NetworkCheckCubit(
      getIt(),
    ),
  );

  getIt.registerFactoryParam(
    (
      OverviewCubit overviewCubit,
      ClubInfoCubit clubInfoCubit,
    ) =>
        WelcomeLoaderCubit(
      clubInfoCubit: clubInfoCubit,
      overviewCubit: overviewCubit,
    ),
  );

  getIt.registerFactory(
    () => OverviewCubit(
      clubSalesFacade: getIt(),
    ),
  );

  getIt.registerFactoryParam(
    (OverviewCubit overviewCubit, _) => DiscountsCubit(
      overviewCubit: overviewCubit,
      discountFacade: getIt(),
    ),
  );

  getIt.registerFactoryParam(
    (NetworkCheckCubit networkCheckCubit, _) => PrivacyPolicyCubit(
      networkCheckCubit: networkCheckCubit,
      partnerTermsOfServiceFacade: getIt(),
    ),
  );
}

void _registerFacades() {
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

  getIt.registerLazySingleton<PartnerAuthFacade>(
    () => FirebaseAuthFacade(
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

  getIt.registerLazySingleton<CommonEventFacade>(
    () => FirebaseEventFacade(
      firebaseAuth: getIt(),
      logger: getIt(),
      firestore: getIt(),
      storage: getIt(),
      eventCloudFunctionsFacade: getIt(),
      crashlytics: getIt(),
      searchApi: getIt(),
    ),
  );

  getIt.registerLazySingleton<PartnerEventFacade>(
    () => FirebaseEventFacade(
      firebaseAuth: getIt(),
      logger: getIt(),
      firestore: getIt(),
      storage: getIt(),
      eventCloudFunctionsFacade: getIt(),
      crashlytics: getIt(),
      searchApi: getIt(),
    ),
  );

  getIt.registerLazySingleton<AvailableFiltersFacade>(
    () => FirebaseAvailableFiltersFacade(
      crashlytics: getIt(),
      logger: getIt(),
      firestore: getIt(),
    ),
  );

  getIt.registerLazySingleton<PartnerClubFacade>(
    () => FirebaseClubFacade(
      firestore: getIt(),
      firebaseAuth: getIt(),
      logger: getIt(),
      cloudFunctionsFacade: getIt(),
      firebaseStorage: getIt(),
      crashlytics: getIt(),
      clubsApi: getIt(),
    ),
  );

  getIt.registerLazySingleton<PartnerRewardFacade>(
    () => FirebaseRewardFacade(
      firestore: getIt(),
      firebaseAuth: getIt(),
      logger: getIt(),
      crashlytics: getIt(),
    ),
  );

  getIt.registerLazySingleton<PartnerEventTicketsFacade>(
    () => FirebaseEventTicketsFacade(
      firestore: getIt(),
      logger: getIt(),
      crashlytics: getIt(),
    ),
  );

  getIt.registerLazySingleton<SelectorManagementFacade>(
    () => FirebaseSelectorManagementFacade(
      selectorCloudFunctionsFacade: getIt(),
      logger: getIt(),
      firestore: getIt(),
      crashlytics: getIt(),
    ),
  );

  getIt.registerLazySingleton<SelectorManagementCloudFunctionsFacade>(
    () => SelectorManagementCloudFunctionsFacadeImpl(
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

  getIt.registerLazySingleton<ClubCloudFunctionsFacade>(
    () => ClubCloudFunctionsFacadeImpl(
      getIt(),
    ),
  );

  getIt.registerLazySingleton<EventCloudFunctionsFacade>(
    () => EventCloudFunctionsFacadeImpl(
      getIt(),
    ),
  );

  getIt.registerLazySingleton<PartnerEventReviewFacade>(
    () => FirebaseEventReviewFacade(
      logger: getIt(),
      firestore: getIt(),
      crashlytics: getIt(),
    ),
  );

  getIt.registerLazySingleton<PartnerReviewFacade>(
    () => FirebaseReviewFacade(
      logger: getIt(),
      firestore: getIt(),
      firebaseAuth: getIt(),
      crashlytics: getIt(),
    ),
  );

  getIt.registerLazySingleton<DiscountFacade>(
    () => FirebaseDiscountFacade(
      logger: getIt(),
      firestore: getIt(),
      firebaseAuth: getIt(),
      firebaseCrashlytics: getIt(),
    ),
  );

  getIt.registerLazySingleton<ClubSalesFacade>(
    () => FirebaseClubSalesFacade(
      logger: getIt(),
      firestore: getIt(),
      firebaseAuth: getIt(),
      firebaseCrashlytics: getIt(),
    ),
  );

  getIt.registerLazySingleton<EventCostsFacade>(
    () => FirebaseEventCostsFacade(
      logger: getIt(),
      crashlytics: getIt(),
      firestore: getIt(),
    ),
  );

  getIt.registerLazySingleton<PartnerTermsOfServiceFacade>(
    () => FirebaseTermsOfServiceFacade(
      logger: getIt(),
      firebaseCrashlytics: getIt(),
      firebaseStorage: getIt(),
    ),
  );

  getIt.registerLazySingleton<PartnerPaymentFacade>(
    () => FirebasePaymentFacade(
      logger: getIt(),
      firebaseCrashlytics: getIt(),
      firestore: getIt(),
      stripe: getIt(),
      firebaseAuth: getIt(),
      paymentCloudFunctionsFacade: getIt(),
    ),
  );

  getIt.registerLazySingleton<PaymentCloudFunctionsFacade>(
    () => PaymentCloudFunctionsFacadeImpl(
      firebaseFunctions: getIt(),
      dio: getIt(),
    ),
  );
}

void _registerModules() {
  getIt.registerLazySingleton(() => GoogleSignIn());

  getIt.registerLazySingleton(() => FirebaseFirestore.instance);

  getIt.registerLazySingleton(() => FirebaseAuth.instance);

  getIt.registerLazySingleton(
    () => FirebaseFunctions.instanceFor(region: 'europe-central2'),
  );

  getIt.registerLazySingleton(() => FirebaseDynamicLinks.instance);

  getIt.registerLazySingleton(() => FirebaseStorage.instance);

  getIt.registerLazySingleton(() => FirebaseAppCheck.instance);

  getIt.registerLazySingleton(() => FirebasePerformance.instance);

  getIt.registerLazySingleton(() => FirebaseAnalytics.instance);

  getIt.registerLazySingleton(() => Stripe.instance);

  getIt.registerLazySingleton(crashlyticsConfig);

  getIt.registerLazySingleton(dioConfig);

  getIt.registerLazySingleton(() => Logger());

  getIt.registerLazySingleton<ClubsApi>(
    () => ClubsApiImpl(
      getIt(),
    ),
  );

  getIt.registerLazySingleton<AlgoliaSearchApi>(
    () => AlgoliaSearchApiImpl(
      getIt(),
    ),
  );

  getIt.registerLazySingleton(() => Connectivity());
}
