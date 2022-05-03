import 'package:algolia/algolia.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:logger/logger.dart';
import 'package:raver_auth/raver_auth.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_scanner/application/current_event/current_event_cubit.dart';
import 'package:raver_scanner/application/scanner/scanner_cubit.dart';
import 'package:raver_scanner/application/sign_in/sign_in_cubit.dart';
import 'package:raver_scanner/application/sign_up/sign_up_cubit.dart';
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
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => SignUpCubit(
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => CurrentEventCubit(
      getIt(),
    ),
  );

  getIt.registerFactoryParam(
    (CurrentEventCubit currentEventCubit, _) => ScannerCubit(
      currentEventCubit: currentEventCubit,
      ticketFacade: getIt(),
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

  getIt.registerLazySingleton<SelectorAuthFacade>(
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

  getIt.registerLazySingleton<SelectorEventFacade>(
    () => FirebaseEventFacade(
      firestore: getIt(),
      algoliaEventsApi: getIt(),
      firebaseAuth: getIt(),
      logger: getIt(),
    ),
  );

  getIt.registerLazySingleton<SelectorTicketFacade>(
    () => FirebaseTicketFacade(
      firestore: getIt(),
      firebaseAuth: getIt(),
      logger: getIt(),
      ticketCloudFunctionsFacade: getIt(),
    ),
  );

  getIt.registerLazySingleton<TicketCloudFunctionsFacade>(
    () => TicketCloudFunctionsFacadeImpl(
      firebaseFunctions: getIt(),
    ),
  );
}

void _registerModules() {
  getIt.registerLazySingleton(() => GoogleSignIn());

  getIt.registerLazySingleton(() => FirebaseFirestore.instance);

  getIt.registerLazySingleton(() => FirebaseAuth.instance);

  getIt.registerLazySingleton(() => FirebaseRemoteConfig.instance);

  getIt.registerLazySingleton(() => FirebaseFunctions.instance);

  getIt.registerLazySingleton(() => Logger());

  getIt.registerLazySingleton(
    () => Algolia.init(
      applicationId: FirebaseRemoteConfig.instance.getString(algoliaAppId),
      apiKey: FirebaseRemoteConfig.instance.getString(algoliaApiKey),
    ),
  );

  getIt.registerLazySingleton<AlgoliaEventsApi>(
    () => AlgoliaEventsApiImpl(
      getIt(),
    ),
  );
}
