import 'package:algolia/algolia.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get_it/get_it.dart';
import 'package:google_place/google_place.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:logger/logger.dart';
import 'package:raver/application/app_settings/app_settings_cubit.dart';
import 'package:raver/application/auth/sign_in/sign_in_cubit.dart';
import 'package:raver/application/auth/sign_up/sign_up_cubit.dart';
import 'package:raver/application/auth/username/username_cubit.dart';
import 'package:raver/application/clubs/club_details/club_details_cubit.dart';
import 'package:raver/application/clubs/club_details/club_photos/club_photos_bloc.dart';
import 'package:raver/application/clubs/club_filters/club_filters_cubit.dart';
import 'package:raver/application/clubs/clubs_overview/clubs_overview_bloc.dart';
import 'package:raver/application/core/google_places/google_places_cubit.dart';
import 'package:raver/application/core/user_location/user_location_cubit.dart';
import 'package:raver/application/events/event_details/event_details_cubit.dart';
import 'package:raver/application/events/event_favorite/event_favorite_cubit.dart';
import 'package:raver/application/events/event_filters/event_filters_cubit.dart';
import 'package:raver/application/initialization/remote_config_cubit.dart';
import 'package:raver/application/network_check/network_check_cubit.dart';
import 'package:raver/application/profile/profile_cubit_hub.dart';
import 'package:raver/application/ticket_checkout/ticket_checkout_cubit.dart';
import 'package:raver/application/ticket_list/ticket_list_cubit.dart';
import 'package:raver/application/ticket_qr/ticket_qr_cubit.dart';
import 'package:raver/application/user_favorites/event_favorites/user_event_favorites_cubit.dart';
import 'package:raver/domain/clubs/club_facade.dart';
import 'package:raver/domain/payments/payment_facade.dart';
import 'package:raver/domain/remote_config/remote_config_facade.dart';
import 'package:raver/infrastructure/clubs/firebase_club_facade.dart';
import 'package:raver/infrastructure/core/algolia/algolia_clubs_api.dart';
import 'package:raver/infrastructure/payments/cloud_functions/payment_cloud_functions_facade.dart';
import 'package:raver/infrastructure/payments/firebase_payment_facade.dart';
import 'package:raver/infrastructure/remote_config/firebase_remote_config_facade.dart';
import 'package:raver_account_settings/raver_account_settings.dart';
import 'package:raver_auth/raver_auth.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_tickets/infrastructure/cloud_functions/ticket_cloud_functions_facade.dart';
import 'package:raver_tickets/raver_tickets.dart';

import 'application/clubs/club_favorite/club_favorite_cubit.dart';
import 'application/profile/profile_cubit.dart';
import 'application/user_favorites/club_favorites/user_club_favorites_cubit.dart';

final GetIt getIt = GetIt.instance;

void registerDependencies() {
  _registerFacades();
  _registerCubits();
  _registerModules();
  _registerCubitSubjects();
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

  getIt.registerFactory(
    () => GooglePlacesCubit(
      getIt(),
    ),
  );

  //Auth
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
    () => SignUpCubit(
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => ResetPasswordCubit(
      getIt(),
    ),
  );
  getIt.registerFactory(
    () => ChangePasswordCubit(
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

  getIt.registerLazySingleton(
    () => ClubsOverviewBloc(
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => ClubFiltersCubit(
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => ClubDetailsCubit(
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => ClubFavoriteCubit(
      getIt(),
      getIt(),
    ),
  );

  //Tickets
  getIt.registerFactory(
    () => TicketListCubit(
      getIt(),
    ),
  );

  getIt.registerFactoryParam(
    (TicketListCubit ticketListCubit, _) => TicketQrCubit(
      ticketFacade: getIt(),
      ticketListCubit: ticketListCubit,
    ),
  );

  //Events
  getIt.registerFactory(
    () => EventDetailsCubit(
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => EventFavoriteCubit(
      getIt(),
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => EventOverviewBloc(
      getIt(),
    ),
  );

  getIt.registerFactoryParam(
    (EventOverviewBloc eventOverviewBloc, _) => EventFiltersCubit(
      eventOverviewBloc,
      getIt(),
    ),
  );

  //Favorites
  getIt.registerFactory(
    () => UserEventFavoritesCubit(
      getIt(),
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => UserClubFavoritesCubit(
      getIt(),
      getIt(),
    ),
  );

  //Remote Config
  getIt.registerFactory(
    () => RemoteConfigCubit(
      getIt(),
    ),
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
  getIt.registerFactory(() => ProfileCubit(
        getIt(),
        getIt(),
      ));

  //App settings
  getIt.registerFactory(() => AppSettingsCubit());

  //Payment
  getIt.registerFactoryParam(
    (TicketListCubit ticketListCubit, _) => TicketCheckoutCubit(
      paymentFacade: getIt(),
      ticketListCubit: ticketListCubit,
    ),
  );
}

void _registerCubitSubjects() {
  getIt.registerLazySingleton(() => ProfileBroadcastSubject());
}

void _registerFacades() {
  //Core
  getIt.registerLazySingleton<AvailableFiltersFacade>(
    () => FirebaseAvailableFiltersFacade(
      getIt(),
      getIt(),
    ),
  );

  //Auth
  getIt.registerLazySingleton<CommonAuthFacade>(
    () => FirebaseAuthFacade(
      firebaseAuth: getIt(),
      googleSignIn: getIt(),
      logger: getIt(),
      authCloudFunctionsFacade: getIt(),
    ),
  );

  getIt.registerLazySingleton<UserAuthFacade>(
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

  //Club
  getIt.registerLazySingleton<ClubFacade>(
    () => FirebaseClubFacade(
      firestore: getIt(),
      storage: getIt(),
      logger: getIt(),
      algoliaClubsApi: getIt(),
    ),
  );

  getIt.registerLazySingleton<UserTicketFacade>(
    () => FirebaseTicketFacade(
      firestore: getIt(),
      logger: getIt(),
      ticketCloudFunctionsFacade: getIt(),
      firebaseAuth: getIt(),
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
      algoliaEventsApi: getIt(),
      logger: getIt(),
      firebaseAuth: getIt(),
    ),
  );

  getIt.registerLazySingleton<CommonEventFacade>(
    () => FirebaseEventFacade(
      firestore: getIt(),
      algoliaEventsApi: getIt(),
      logger: getIt(),
      firebaseAuth: getIt(),
    ),
  );

  //Remote Config
  getIt.registerLazySingleton<RemoteConfigFacade>(
    () => FirebaseRemoteConfigFacade(
      firebaseRemoteConfig: getIt(),
      logger: getIt(),
    ),
  );

  //Payment
  getIt.registerLazySingleton<PaymentFacade>(
    () => FirebasePaymentFacade(
      firestore: getIt(),
      logger: getIt(),
      paymentCloudFunctionsFacade: getIt(),
    ),
  );

  getIt.registerLazySingleton<PaymentCloudFunctionsFacade>(
    () => PaymentCloudFunctionsFacadeImpl(),
  );

  //Profile
  getIt.registerLazySingleton<UserAccountFacade>(
    () => FirebaseAccountFacade(
      firestore: getIt(),
      logger: getIt(),
      firebaseAuth: getIt(),
    ),
  );
}

void _registerModules() {
  getIt.registerLazySingleton(() => GoogleSignIn());

  getIt.registerLazySingleton(() => FirebaseFirestore.instance);

  getIt.registerLazySingleton(() => FirebaseStorage.instance);

  getIt.registerLazySingleton(() => FirebaseAuth.instance);

  getIt.registerLazySingleton(() => FirebaseRemoteConfig.instance);

  getIt.registerLazySingleton(() => FirebaseFunctions.instance);

  getIt.registerLazySingleton(
      () => GooglePlace(FirebaseRemoteConfig.instance.getString(googleApiKey)));

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

  getIt.registerLazySingleton(
    () => AlgoliaClubsApi(
      getIt(),
    ),
  );

  getIt.registerLazySingleton(() => GeolocatorPlatform.instance);

  getIt.registerLazySingleton(() => Connectivity());

  getIt.registerLazySingleton(() => Logger());
}
