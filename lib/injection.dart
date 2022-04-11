import 'package:algolia/algolia.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:logger/logger.dart';
import 'package:raver_auth/raver_auth.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_scanner/application/current_event/current_event_cubit.dart';
import 'package:raver_scanner/application/sign_in/sign_in_cubit.dart';

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
    () => CurrentEventCubit(
      getIt(),
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
    () => AuthCloudFunctionsFacadeImpl(),
  );

  getIt.registerLazySingleton<EventFacade>(
    () => FirebaseEventFacade(
      firestore: getIt(),
      algoliaEventsApi: getIt(),
      firebaseAuth: getIt(),
      logger: getIt(),
    ),
  );
}

void _registerModules() {
  getIt.registerLazySingleton(() => GoogleSignIn());

  getIt.registerLazySingleton(() => FirebaseFirestore.instance);

  getIt.registerLazySingleton(() => FirebaseAuth.instance);

  getIt.registerLazySingleton(() => FirebaseRemoteConfig.instance);

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
