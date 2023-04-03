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
import 'package:firebase_app_check/firebase_app_check.dart';
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
import 'package:tonight/application/app_settings/app_settings_cubit.dart';
import 'package:tonight/application/auth/sign_in/sign_in_cubit.dart';
import 'package:tonight/application/auth/username/username_cubit.dart';
import 'package:tonight/application/clubs/club_details/club_details_cubit.dart';
import 'package:tonight/application/clubs/club_details/club_photos/club_photos_bloc.dart';
import 'package:tonight/application/clubs/club_filters/club_filters_cubit.dart';
import 'package:tonight/application/clubs/club_rewards/club_rewards_cubit.dart';
import 'package:tonight/application/clubs/clubs_overview/clubs_overview_bloc.dart';
import 'package:tonight/application/core/places/places_cubit.dart';
import 'package:tonight/application/core/user_location/user_location_cubit.dart';
import 'package:tonight/application/events/event_details/event_details_cubit.dart';
import 'package:tonight/application/events/event_favorite/event_favorite_cubit.dart';
import 'package:tonight/application/events/event_filters/event_filters_cubit.dart';
import 'package:tonight/application/events/event_tickets/event_tickets_cubit.dart';
import 'package:tonight/application/invoice_data/invoice_data_cubit.dart';
import 'package:tonight/application/onboarding/onboarding_cubit.dart';
import 'package:tonight/application/payment_method/payment_method_cubit.dart';
import 'package:tonight/application/profile/profile_cubit_hub.dart';
import 'package:tonight/application/push_notifications/push_notifications_cubit.dart';
import 'package:tonight/application/terms_of_service/terms_of_service_cubit.dart';
import 'package:tonight/application/ticket_checkout/ticket_checkout_cubit.dart';
import 'package:tonight/application/ticket_list/ticket_list_cubit.dart';
import 'package:tonight/application/ticket_qr/ticket_qr_cubit.dart';
import 'package:tonight/application/vip_checkout/vip_checkout_cubit.dart';
import 'package:tonight/domain/places/places_facade.dart';
import 'package:tonight/infrastructure/google_places/google_places_facade.dart';

import 'application/clubs/club_details/club_reviews/club_reviews_bloc.dart';
import 'application/clubs/club_favorite/club_favorite_cubit.dart';
import 'application/event_review/existing_review/existing_review_cubit.dart';
import 'application/event_review/new_review/event_review_cubit.dart';
import 'application/profile/profile_cubit.dart';

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
        () =>
        AvailableFiltersCubit(
          getIt(),
        ),
  );

  getIt.registerLazySingleton(
        () =>
        UserLocationCubit(
          getIt(),
        ),
  );

  getIt.registerFactory(
        () =>
        PlacesCubit(
          getIt(),
        ),
  );

  //Auth
  getIt.registerFactory(
        () =>
        AuthCubit(
          getIt(),
        ),
  );

  getIt.registerFactory(
        () =>
        SignInCubit(
          firebaseDynamicLinks: getIt(),
          authFacade: getIt(),
        ),
  );

  getIt.registerFactory(
        () =>
        UsernameCubit(
          getIt(),
        ),
  );

  //Clubs
  getIt.registerFactory(
        () =>
        ClubPhotosBloc(
          getIt(),
        ),
  );

  getIt.registerFactory(
        () =>
        ClubsOverviewBloc(
          getIt(),
        ),
  );

  getIt.registerFactoryParam(
        (ClubsOverviewBloc clubsOverviewBloc, _) =>
        ClubFiltersCubit(
          clubsOverviewBloc,
          getIt(),
        ),
  );

  getIt.registerFactory(
        () =>
        ClubDetailsCubit(
          getIt(),
        ),
  );

  getIt.registerFactory(
        () =>
        ClubFavoriteCubit(
          getIt(),
        ),
  );

  //Tickets
  getIt.registerFactory(
        () =>
        TicketListCubit(
          getIt(),
        ),
  );

  //Event ticket pools
  getIt.registerFactory(
        () =>
        EventTicketsCubit(
          getIt(),
        ),
  );

  getIt.registerFactoryParam(
        (TicketListCubit ticketListCubit, _) =>
        TicketQrCubit(
          ticketFacade: getIt(),
          ticketListCubit: ticketListCubit,
          eventTicketsCubit: getIt(),
        ),
  );

  //Reviews
  getIt.registerFactoryParam(
        (TicketListCubit ticketListCubit, _) =>
        NewReviewCubit(
          profileBroadcastSubject: getIt(),
          ticketListCubit: ticketListCubit,
          reviewFacade: getIt(),
        ),
  );

  getIt.registerFactory(
        () =>
        ClubReviewsBloc(
          getIt(),
        ),
  );

  getIt.registerFactory(
        () =>
        ExistingReviewCubit(
          getIt(),
        ),
  );

  //Events
  getIt.registerFactoryParam(
        (EventTicketsCubit eventTicketsCubit, _) =>
        EventDetailsCubit(
          eventTicketsCubit: eventTicketsCubit,
          userEventFacade: getIt(),
        ),
  );

  getIt.registerFactory(
        () =>
        EventFavoriteCubit(
          getIt(),
        ),
  );

  getIt.registerFactory(
        () =>
        EventOverviewBloc(
          getIt(),
        ),
  );

  getIt.registerFactoryParam(
        (EventOverviewBloc eventOverviewBloc, _) =>
        EventFiltersCubit(
          eventOverviewBloc,
          getIt(),
        ),
  );

  //Network Check
  getIt.registerFactory(
        () =>
        NetworkCheckCubit(
          getIt(),
        ),
  );

  //App info
  getIt.registerFactory(() => AppInfoCubit());

  //Profile
  getIt.registerFactory(
        () =>
        ProfileCubit(
          commonAuthFacade: getIt(),
          userAccountFacade: getIt(),
          profileBroadcastSubject: getIt(),
        ),
  );

  //App settings
  getIt.registerFactory(() => AppSettingsCubit());

  //Payment
  getIt.registerFactoryParam(
        (TicketListCubit ticketListCubit, _) =>
        TicketCheckoutCubit(
          paymentFacade: getIt(),
          eventTicketsCubit: getIt(),
          ticketListCubit: ticketListCubit,
          currencyParamsFacade: getIt(),
        ),
  );

  getIt.registerFactoryParam(
        (TicketListCubit ticketListCubit, _) =>
        VipCheckoutCubit(
          paymentFacade: getIt(),
          eventTicketsCubit: getIt(),
          ticketListCubit: ticketListCubit,
          currencyParamsFacade: getIt(),
        ),
  );

  //Rewards
  getIt.registerFactory(
        () =>
        ClubRewardsCubit(
          getIt(),
          getIt(),
        ),
  );

  getIt.registerFactory(
        () =>
        InvoiceDataCubit(
          getIt(),
        ),
  );

  getIt.registerFactory(
        () =>
        PushNotificationsCubit(
          firebaseMessaging: getIt(),
          flutterLocalNotificationsPlugin: getIt(),
          userAccountFacade: getIt(),
        ),
  );

  getIt.registerFactoryParam(
        (NetworkCheckCubit networkCheckCubit, _) =>
        TermsOfServiceCubit(
          networkCheckCubit: networkCheckCubit,
          userTermsOfServiceFacade: getIt(),
        ),
  );

  getIt.registerFactory(
        () =>
        PaymentMethodCubit(
          getIt(),
        ),
  );

  getIt.registerFactory(
        () =>
        OnboardingCubit(
          getIt(),
        ),
  );
}

void _registerCubitSubjects() {
  getIt.registerLazySingleton(() => ProfileBroadcastSubject());
}

void _registerFacades() {
  //Core
  getIt.registerLazySingleton<AvailableFiltersFacade>(
        () =>
        FirebaseAvailableFiltersFacade(
          firestore: getIt(),
          crashlytics: getIt(),
          logger: getIt(),
        ),
  );

  //Auth
  getIt.registerLazySingleton<CommonAuthFacade>(
        () =>
        FirebaseAuthFacade(
          firebaseAuth: getIt(),
          googleSignIn: getIt(),
          logger: getIt(),
          authCloudFunctionsFacade: getIt(),
          crashlytics: getIt(),
        ),
  );

  getIt.registerLazySingleton<UserAuthFacade>(
        () =>
        FirebaseAuthFacade(
          firebaseAuth: getIt(),
          googleSignIn: getIt(),
          logger: getIt(),
          authCloudFunctionsFacade: getIt(),
          crashlytics: getIt(),
        ),
  );

  getIt.registerLazySingleton<AuthCloudFunctionsFacade>(
        () =>
        AuthCloudFunctionsFacadeImpl(
          getIt(),
        ),
  );

  //Club
  getIt.registerLazySingleton<UserClubFacade>(
        () =>
        FirebaseClubFacade(
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
        () =>
        FirebaseTicketFacade(
          firestore: getIt(),
          logger: getIt(),
          ticketCloudFunctionsFacade: getIt(),
          firebaseAuth: getIt(),
          crashlytics: getIt(),
        ),
  );

  //Reviews
  getIt.registerLazySingleton<UserReviewFacade>(
        () =>
        FirebaseReviewFacade(
          firestore: getIt(),
          logger: getIt(),
          firebaseAuth: getIt(),
          crashlytics: getIt(),
        ),
  );

  getIt.registerLazySingleton<TicketCloudFunctionsFacade>(
        () =>
        TicketCloudFunctionsFacadeImpl(
          firebaseFunctions: getIt(),
        ),
  );

  //Event
  getIt.registerLazySingleton<UserEventFacade>(
        () =>
        FirebaseEventFacade(
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
        () =>
        FirebaseEventTicketsFacade(
          firestore: getIt(),
          logger: getIt(),
          crashlytics: getIt(),
        ),
  );

  getIt.registerLazySingleton<CommonEventFacade>(
        () =>
        FirebaseEventFacade(
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
        () =>
        FirebasePaymentFacade(
          firestore: getIt(),
          logger: getIt(),
          paymentCloudFunctionsFacade: getIt(),
          firebaseAuth: getIt(),
          stripe: getIt(),
          firebaseCrashlytics: getIt(),
        ),
  );

  getIt.registerLazySingleton<PaymentCloudFunctionsFacade>(
        () =>
        PaymentCloudFunctionsFacadeImpl(
          firebaseFunctions: getIt(),
          dio: getIt(),
        ),
  );

  //Profile
  getIt.registerLazySingleton<UserAccountFacade>(
        () =>
        FirebaseAccountFacade(
          firestore: getIt(),
          logger: getIt(),
          firebaseAuth: getIt(),
          firebaseCrashlytics: getIt(),
        ),
  );

  //Cloud functions
  getIt.registerLazySingleton<ClubCloudFunctionsFacade>(
        () =>
        ClubCloudFunctionsFacadeImpl(
          getIt(),
        ),
  );

  //Rewards
  getIt.registerLazySingleton<UserRewardFacade>(
        () =>
        FirebaseRewardFacade(
          firebaseAuth: getIt(),
          firestore: getIt(),
          logger: getIt(),
          crashlytics: getIt(),
        ),
  );

  getIt.registerLazySingleton<EventCloudFunctionsFacade>(
        () =>
        EventCloudFunctionsFacadeImpl(
          getIt(),
        ),
  );

  getIt.registerLazySingleton<CurrencyParamsFacade>(
        () =>
        FirebaseCurrencyParamsFacade(
          firestore: getIt(),
          logger: getIt(),
          crashlytics: getIt(),
        ),
  );

  getIt.registerLazySingleton<UserTermsOfServiceFacade>(
        () =>
        FirebaseTermsOfServiceFacade(
          firebaseStorage: getIt(),
          logger: getIt(),
          firebaseCrashlytics: getIt(),
        ),
  );

  getIt.registerLazySingleton<PlacesFacade>(
        () =>
        GooglePlacesFacade(
          dio: getIt(),
          logger: getIt(),
          firebaseCrashlytics: getIt(),
        ),
  );
}

void _registerModules() {
  getIt.registerLazySingleton(() => GoogleSignIn());

  getIt.registerLazySingleton(() => FirebaseFirestore.instance);

  getIt.registerLazySingleton(() => FirebaseStorage.instance);

  getIt.registerLazySingleton(() => FirebaseAuth.instance);

  getIt.registerLazySingleton(() => FirebaseMessaging.instance);

  getIt.registerLazySingleton(() => FirebaseAppCheck.instance);

  getIt.registerLazySingleton(() => FirebaseAnalytics.instance);

  getIt.registerLazySingleton(
          () => FirebaseFunctions.instanceFor(region: 'europe-central2'));

  getIt.registerLazySingleton(() => FirebaseDynamicLinks.instance);

  getIt.registerLazySingleton(() => FirebasePerformance.instance);

  getIt.registerLazySingleton(crashlyticsConfig);

  getIt.registerLazySingleton<EventsApi>(
        () =>
        EventsApiImpl(
          getIt(),
        ),
  );

  getIt.registerLazySingleton<ClubsApi>(
        () =>
        ClubsApiImpl(
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
