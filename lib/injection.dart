import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:logger/logger.dart';
import 'package:raver/application/auth/auth_cubit.dart';
import 'package:raver/application/clubs/club_details/club_details_cubit.dart';
import 'package:raver/application/clubs/club_details/club_photos/club_photos_cubit.dart';
import 'package:raver/application/clubs/club_filters/club_filters_cubit.dart';
import 'package:raver/application/events/event_details/event_details_cubit.dart';
import 'package:raver/application/events/event_favorite/event_favorite_cubit.dart';
import 'package:raver/application/events/event_filters/event_filters_cubit.dart';
import 'package:raver/application/events/event_overview/event_overview_bloc.dart';
import 'package:raver/application/tickets/ticket_cubit.dart';
import 'package:raver/domain/auth/auth_facade.dart';
import 'package:raver/domain/clubs/club_facade.dart';
import 'package:raver/domain/events/event_facade.dart';
import 'package:raver/domain/tickets/ticket_facade.dart';
import 'package:raver/domain/tickets/ticket_overview/ticket_overview_facade.dart';
import 'package:raver/infrastructure/clubs/firebase_club_facade.dart';
import 'package:raver/infrastructure/core/algolia_api.dart';
import 'package:raver/infrastructure/events/firebase_event_facade.dart';
import 'package:raver/infrastructure/tickets/firebase_ticket_facade.dart';
import 'package:raver/infrastructure/tickets/ticket_overview/firebase_ticket_overview_facade.dart';

import 'application/auth/sign_in_form/sign_in_form_cubit.dart';
import 'application/clubs/clubs_overview/clubs_overview_bloc.dart';
import 'infrastructure/auth/firebase_auth_facade.dart';

final GetIt getIt = GetIt.instance;

void registerDependencies() {
  _registerFacades();
  _registerCubits();
  _registerModules();
}

void _registerCubits() {
  //Auth
  getIt.registerFactory(
    () => AuthCubit(
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => SignInFormCubit(
      getIt(),
    ),
  );

  //Clubs
  getIt.registerFactory(
    () => ClubPhotosCubit(
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

  //Tickets
  getIt.registerFactory(
    () => TicketCubit(
      getIt(),
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
    ),
  );

  getIt.registerFactory(
    () => EventFiltersCubit(
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => EventOverviewBloc(
      getIt(),
    ),
  );
}

void _registerFacades() {
  getIt.registerLazySingleton<Logger>(
    () => Logger(),
  );

  //Auth
  getIt.registerLazySingleton<AuthFacade>(
    () => FirebaseAuthFacade(
      firebaseAuth: getIt(),
      googleSignIn: getIt(),
      firestore: getIt(),
      logger: getIt(),
    ),
  );

  //Club
  getIt.registerLazySingleton<ClubFacade>(
        () => FirebaseClubFacade(
      firestore: getIt(),
      storage: getIt(),
      logger: getIt(),
      algoliaAPI: getIt(),
    ),
  );

  //Ticket
  getIt.registerLazySingleton<TicketOverviewFacade>(
        () => FirebaseTicketOverviewFacade(
      firestore: getIt(),
      logger: getIt(),
    ),
  );

  getIt.registerLazySingleton<TicketFacade>(
        () => FirebaseTicketFacade(
      firestore: getIt(),
      logger: getIt(),
    ),
  );

  //Event
  getIt.registerLazySingleton<EventFacade>(
        () => FirebaseEventFacade(
      firestore: getIt(),
      algoliaAPI: getIt(),
      logger: getIt(),
    ),
  );
}

void _registerModules() {
  getIt.registerLazySingleton(() => GoogleSignIn());

  getIt.registerLazySingleton(() => FirebaseFirestore.instance);

  getIt.registerLazySingleton(() => FirebaseStorage.instance);

  getIt.registerLazySingleton(() => FirebaseAuth.instance);

  getIt.registerLazySingleton(() => AlgoliaAPI());
}
