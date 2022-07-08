import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:firebase_performance/firebase_performance.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:logger/logger.dart';
import 'package:raver_auth/raver_auth.dart';
import 'package:raver_clubs/domain/club/selector_club_facade.dart';
import 'package:raver_clubs/raver_clubs.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/infrastructure/event_cloud_functions/event_cloud_functions_facade.dart';
import 'package:raver_events/infrastructure/typesense_events_api.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_rewards/domain/domain.dart';
import 'package:raver_rewards/infrastructure/firebase_reward_facade.dart';
import 'package:raver_scanner/application/current_event/current_event_cubit.dart';
import 'package:raver_scanner/application/scanner/scanner_cubit.dart';
import 'package:raver_scanner/application/selector_club/selector_club_cubit.dart';
import 'package:raver_scanner/application/sign_in/sign_in_cubit.dart';
import 'package:raver_scanner/application/welcome_loader/welcome_loader_cubit.dart';
import 'package:raver_tickets/infrastructure/cloud_functions/ticket_cloud_functions_facade.dart';
import 'package:raver_tickets/raver_tickets.dart';

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
    () => ResetPasswordCubit(
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => SignInCubit(
      firebaseDynamicLinks: getIt(),
      selectorAuthFacade: getIt(),
    ),
  );

  getIt.registerFactory(
    () => CurrentEventCubit(
      getIt(),
    ),
  );

  getIt.registerFactoryParam(
    (
      CurrentEventCubit currentEventCubit,
      SelectorClubCubit selectorClubCubit,
    ) =>
        ScannerCubit(
      currentEventCubit: currentEventCubit,
      selectorClubCubit: selectorClubCubit,
      ticketFacade: getIt(),
    ),
  );

  getIt.registerFactory(
    () => SelectorClubCubit(
      selectorClubFacade: getIt(),
      selectorRewardFacade: getIt(),
    ),
  );

  getIt.registerFactory(
    () => NetworkCheckCubit(
      getIt(),
    ),
  );

  getIt.registerFactoryParam(
    (
      CurrentEventCubit currentEventCubit,
      SelectorClubCubit selectorClubCubit,
    ) =>
        WelcomeLoaderCubit(
      currentEventCubit: currentEventCubit,
      selectorClubCubit: selectorClubCubit,
    ),
  );

  getIt.registerFactory(
    () => RemoteConfigCubit(
      networkCheckCubit: getIt(),
      remoteConfigFacade: getIt(),
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
    ),
  );

  getIt.registerLazySingleton<SelectorAuthFacade>(
    () => FirebaseAuthFacade(
      firebaseAuth: getIt(),
      googleSignIn: getIt(),
      logger: getIt(),
      authCloudFunctionsFacade: getIt(),
      crashlytics: getIt(),
    ),
  );

  getIt.registerLazySingleton<AuthCloudFunctionsFacade>(
    () => AuthCloudFunctionsFacadeImpl(
      getIt(),
    ),
  );

  getIt.registerLazySingleton<SelectorEventFacade>(
    () => FirebaseEventFacade(
      firestore: getIt(),
      typesenseEventsApi: getIt(),
      firebaseAuth: getIt(),
      eventCloudFunctionsFacade: getIt(),
      storage: getIt(),
      logger: getIt(),
      crashlytics: getIt(),
    ),
  );

  getIt.registerLazySingleton<SelectorTicketFacade>(
    () => FirebaseTicketFacade(
      firestore: getIt(),
      firebaseAuth: getIt(),
      logger: getIt(),
      ticketCloudFunctionsFacade: getIt(),
      crashlytics: getIt(),
    ),
  );

  getIt.registerLazySingleton<TicketCloudFunctionsFacade>(
    () => TicketCloudFunctionsFacadeImpl(
      firebaseFunctions: getIt(),
    ),
  );

  getIt.registerLazySingleton<SelectorClubFacade>(
    () => FirebaseClubFacade(
      firestore: getIt(),
      firebaseAuth: getIt(),
      logger: getIt(),
      cloudFunctionsFacade: getIt(),
      typesenseClubsApi: getIt(),
      firebaseStorage: getIt(),
      crashlytics: getIt(),
    ),
  );

  getIt.registerLazySingleton<ClubCloudFunctionsFacade>(
    () => ClubCloudFunctionsFacadeImpl(
      getIt(),
    ),
  );

  getIt.registerLazySingleton<SelectorRewardFacade>(
    () => FirebaseRewardFacade(
      firestore: getIt(),
      firebaseAuth: getIt(),
      logger: getIt(),
      crashlytics: getIt(),
    ),
  );

  getIt.registerLazySingleton<EventCloudFunctionsFacade>(
    () => EventCloudFunctionsFacadeImpl(
      getIt(),
    ),
  );

  getIt.registerLazySingleton<RemoteConfigFacade>(
    () => FirebaseRemoteConfigFacade(
      firebaseCrashlytics: getIt(),
      firebaseRemoteConfig: getIt(),
      logger: getIt(),
    ),
  );
}

void _registerModules() {
  getIt.registerLazySingleton(() => GoogleSignIn());

  getIt.registerLazySingleton(() => FirebaseFirestore.instance);

  getIt.registerLazySingleton(() => FirebaseAuth.instance);

  getIt.registerLazySingleton(() => FirebaseRemoteConfig.instance);

  getIt.registerLazySingleton(
    () => FirebaseFunctions.instanceFor(region: 'europe-central2'),
  );

  getIt.registerLazySingleton(() => FirebaseDynamicLinks.instance);

  getIt.registerLazySingleton(() => FirebaseStorage.instance);

  getIt.registerLazySingleton(() => FirebaseAppCheck.instance);

  getIt.registerLazySingleton(() => FirebaseAnalytics.instance);

  getIt.registerLazySingleton(() => FirebasePerformance.instance);

  getIt.registerLazySingleton(crashlyticsConfig);

  getIt.registerLazySingleton(() => Logger());

  getIt.registerLazySingleton(typesenseConfig);

  getIt.registerLazySingleton<TypesenseEventsApi>(
    () => TypesenseEventsApiImpl(
      getIt(),
    ),
  );

  getIt.registerLazySingleton<TypesenseClubsApi>(
    () => TypesenseClubsApiImpl(
      getIt(),
    ),
  );

  getIt.registerLazySingleton(() => Connectivity());

  getIt.registerLazySingleton(dioConfig);
}
