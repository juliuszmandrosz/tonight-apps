import 'package:algolia/algolia.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:logger/logger.dart';
import 'package:raver_auth/raver_auth.dart';
import 'package:raver_clubs/raver_clubs.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_partners/application/add_edit_reward/add_edit_reward_cubit.dart';
import 'package:raver_partners/application/add_event_notifier/add_event_notifier_cubit.dart';
import 'package:raver_partners/application/auth/sign_in/sign_in_cubit.dart';
import 'package:raver_partners/application/club_info/club_info_cubit.dart';
import 'package:raver_partners/application/event_filters/event_filters_cubit.dart';
import 'package:raver_partners/application/reward_list/reward_list_cubit.dart';
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

  getIt.registerFactory(
        () => AddEventNotifierCubit(),
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
        AddEventNotifierCubit addEventNotifierCubit,
        ClubInfoCubit clubInfoCubit,
        ) =>
        AddEventCubit(
          clubInfoCubit: clubInfoCubit,
          addEventNotifierCubit: addEventNotifierCubit,
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
      getIt(),
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
        () => AuthCloudFunctionsFacadeImpl(),
  );

  getIt.registerLazySingleton<EventFacade>(
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
    ),
  );

  getIt.registerLazySingleton<PartnerRewardFacade>(
    () => FirebaseRewardFacade(
      firestore: getIt(),
      firebaseAuth: getIt(),
      logger: getIt(),
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