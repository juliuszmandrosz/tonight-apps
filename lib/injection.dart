import 'package:algolia/algolia.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:logger/logger.dart';
import 'package:raver_auth/raver_auth.dart';
import 'package:raver_clubs/infrastructure/cloud_functions/club_cloud_functions_facade.dart';
import 'package:raver_clubs/raver_clubs.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_partners/application/add_edit_reward/add_edit_reward_cubit.dart';
import 'package:raver_partners/application/add_edit_ticket_pool/add_edit_ticket_pool_cubit.dart';
import 'package:raver_partners/application/add_event/add_event_cubit.dart';
import 'package:raver_partners/application/auth/sign_in/sign_in_cubit.dart';
import 'package:raver_partners/application/club_info/club_info_cubit.dart';
import 'package:raver_partners/application/event_filters/event_filters_cubit.dart';
import 'package:raver_partners/application/event_notifier/event_notifier_cubit.dart';
import 'package:raver_partners/application/invite_selector/invite_selector_cubit.dart';
import 'package:raver_partners/application/past_event_details/past_event_details_cubit.dart';
import 'package:raver_partners/application/postpone_event/postpone_event_cubit.dart';
import 'package:raver_partners/application/reward_list/reward_list_cubit.dart';
import 'package:raver_partners/application/selector_list/selector_list_cubit.dart';
import 'package:raver_partners/application/upcoming_live_event/upcoming_live_event_cubit.dart';
import 'package:raver_partners/domain/currency_params/currency_params_facade.dart';
import 'package:raver_partners/domain/selector_management/selector_management_facade.dart';
import 'package:raver_partners/infrastructure/currency_params/firebase_currency_params_facade.dart';
import 'package:raver_partners/infrastructure/selector_management/cloud_functions/selector_cloud_functions_facade.dart';
import 'package:raver_partners/infrastructure/selector_management/firebase_selector_management_facade.dart';
import 'package:raver_payments/domain/facades/partner_payment_facade.dart';
import 'package:raver_payments/infrastructure/cloud_functions/payment_cloud_functions_facade.dart';
import 'package:raver_payments/infrastructure/firebase_payment_facade.dart';
import 'package:raver_rewards/raver_rewards.dart';

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
    ),
  );

  getIt.registerFactory(
    () => SignInCubit(
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => ResetPasswordCubit(
      getIt(),
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
      eventFacade: getIt(),
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
    () => AddEditRewardCubit(
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
      paymentFacade: getIt(),
    ),
  );

  getIt.registerFactory(
    () => PastEventDetailsCubit(
      getIt(),
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
      partnerPaymentFacade: getIt(),
      partnerEventFacade: getIt(),
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
    ),
  );

  getIt.registerLazySingleton<PartnerAuthFacade>(
    () => FirebaseAuthFacade(
      firebaseAuth: getIt(),
      googleSignIn: getIt(),
      logger: getIt(),
      authCloudFunctionsFacade: getIt(),
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
      algoliaEventsApi: getIt(),
      firestore: getIt(),
    ),
  );

  getIt.registerLazySingleton<PartnerEventFacade>(
    () => FirebaseEventFacade(
      firebaseAuth: getIt(),
      logger: getIt(),
      algoliaEventsApi: getIt(),
      firestore: getIt(),
    ),
  );

  getIt.registerLazySingleton<AvailableFiltersFacade>(
    () => FirebaseAvailableFiltersFacade(
      getIt(),
      getIt(),
    ),
  );

  getIt.registerLazySingleton<PartnerClubFacade>(
    () => FirebaseClubFacade(
      firestore: getIt(),
      firebaseAuth: getIt(),
      logger: getIt(),
      cloudFunctionsFacade: getIt(),
    ),
  );

  getIt.registerLazySingleton<PartnerRewardFacade>(
    () => FirebaseRewardFacade(
      firestore: getIt(),
      firebaseAuth: getIt(),
      logger: getIt(),
    ),
  );

  getIt.registerLazySingleton<PartnerEventTicketsFacade>(
    () => FirebaseEventTicketsFacade(
      firestore: getIt(),
      logger: getIt(),
    ),
  );

  getIt.registerLazySingleton<SelectorManagementFacade>(
    () => FirebaseSelectorManagementFacade(
      selectorCloudFunctionsFacade: getIt(),
      logger: getIt(),
      firestore: getIt(),
    ),
  );

  getIt.registerLazySingleton<SelectorManagementCloudFunctionsFacade>(
    () => SelectorManagementCloudFunctionsFacadeImpl(),
  );

  getIt.registerLazySingleton<CurrencyParamsFacade>(
    () => FirebaseCurrencyParamsFacade(
      firestore: getIt(),
      logger: getIt(),
    ),
  );

  getIt.registerLazySingleton<ClubCloudFunctionsFacade>(
    () => ClubCloudFunctionsFacadeImpl(
      getIt(),
    ),
  );

  getIt.registerLazySingleton<PartnerPaymentFacade>(
    () => FirebasePaymentFacade(
      paymentCloudFunctionsFacade: getIt(),
      stripe: getIt(),
      logger: getIt(),
    ),
  );

  getIt.registerLazySingleton<PaymentCloudFunctionsFacade>(
    () => PaymentCloudFunctionsFacadeImpl(
      getIt(),
    ),
  );

}

void _registerModules() {
  getIt.registerLazySingleton(
    () => Algolia.init(
      applicationId: dotenv.env[algoliaAppId]!,
      apiKey: dotenv.env[algoliaApiKey]!,
    ),
  );

  getIt.registerLazySingleton(() => GoogleSignIn());

  getIt.registerLazySingleton(() => FirebaseFirestore.instance);

  getIt.registerLazySingleton(() => FirebaseAuth.instance);

  getIt.registerLazySingleton(() => FirebaseFunctions.instance);

  getIt.registerLazySingleton(() => FirebaseRemoteConfig.instance);

  getIt.registerLazySingleton(() => Stripe.instance);

  getIt.registerLazySingleton(() => Logger());

  getIt.registerLazySingleton<AlgoliaEventsApi>(
    () => AlgoliaEventsApiImpl(
      getIt(),
    ),
  );
}
