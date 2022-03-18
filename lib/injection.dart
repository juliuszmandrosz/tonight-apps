import 'package:algolia/algolia.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:logger/logger.dart';
import 'package:raver_auth/raver_auth.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/application/application.dart';
import 'package:raver_events/domain/domain.dart';
import 'package:raver_events/infrastructure/algolia_events_api.dart';
import 'package:raver_events/infrastructure/firebase_event_facade.dart';
import 'package:raver_partners/application/event_filters/event_filters_cubit.dart';

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
    () => EventOverviewBloc(
      getIt(),
    ),
  );

  getIt.registerFactoryParam(
    (EventOverviewBloc eventOverviewBloc, _) =>
        EventFiltersCubit(eventOverviewBloc),
  );
}

void _registerFacades() {
  getIt.registerLazySingleton<AuthFacade>(
    () => FirebaseAuthFacade(
      firebaseAuth: getIt(),
      googleSignIn: getIt(),
      logger: getIt(),
      firestore: getIt(),
    ),
  );

  getIt.registerLazySingleton<EventFacade>(
    () => FirebaseEventFacade(
      firebaseAuth: getIt(),
      logger: getIt(),
      algoliaEventsApi: getIt(),
      firestore: getIt(),
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

  getIt.registerLazySingleton(() => Logger());

  getIt.registerLazySingleton<AlgoliaEventsApi>(
    () => AlgoliaEventsApiImpl(
      getIt(),
    ),
  );
}
