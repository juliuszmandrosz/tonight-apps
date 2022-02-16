import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:raver/application/auth/auth_cubit.dart';
import 'package:raver/application/clubs/club_details/club_details_cubit.dart';
import 'package:raver/application/clubs/club_details/club_photos/club_photos_cubit.dart';
import 'package:raver/application/clubs/club_filters/club_filters_cubit.dart';
import 'package:raver/application/clubs/clubs_overview/clubs_overview_cubit.dart';
import 'package:raver/domain/auth/auth_facade.dart';
import 'package:raver/domain/clubs/club_facade.dart';
import 'package:raver/infrastructure/clubs/firebase_club_facade.dart';

import 'application/auth/sign_in_form/sign_in_form_cubit.dart';
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

  getIt.registerFactory(
    () => ClubsOverviewCubit(
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
}

void _registerFacades() {
  //Auth
  getIt.registerLazySingleton<AuthFacade>(
    () => FirebaseAuthFacade(
      firebaseAuth: getIt(),
      googleSignIn: getIt(),
    ),
  );

  //Club
  getIt.registerLazySingleton<ClubFacade>(
    () => FirebaseClubFacade(
      firestore: getIt(),
      storage: getIt(),
    ),
  );
}

void _registerModules() {
  getIt.registerLazySingleton(() => GoogleSignIn());

  getIt.registerLazySingleton(() => FirebaseFirestore.instance);

  getIt.registerLazySingleton(() => FirebaseStorage.instance);

  getIt.registerLazySingleton(() => FirebaseAuth.instance);
}
