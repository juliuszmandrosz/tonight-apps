// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i6;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:firebase_storage/firebase_storage.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i8;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_cubit.dart' as _i17;
import 'application/auth/sign_in_form/sign_in_form_cubit.dart' as _i15;
import 'application/clubs/club_filters/club_filters_cubit.dart' as _i3;
import 'application/clubs/clubs_overview/clubs_overview_cubit.dart' as _i4;
import 'application/tickets/ticket_overview/ticket_overview_cubit.dart' as _i16;
import 'domain/auth/auth_facade.dart' as _i11;
import 'domain/clubs/club_overview/club_overview_facade.dart' as _i13;
import 'domain/tickets/ticket_overview/ticket_overview_facade.dart' as _i9;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i12;
import 'infrastructure/clubs/clubs_overview/firebase_club_overview_facade.dart'
    as _i14;
import 'infrastructure/core/firebase_injectable_module.dart' as _i18;
import 'infrastructure/tickets/ticket_overview/firebase_ticket_overview_facade.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.factoryParam<_i3.ClubFiltersCubit, _i4.ClubsOverviewCubit?, dynamic>(
      (_clubsOverviewCubit, _) => _i3.ClubFiltersCubit(_clubsOverviewCubit));
  gh.lazySingleton<_i5.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i6.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i7.FirebaseStorage>(
      () => firebaseInjectableModule.firebaseStorage);
  gh.lazySingleton<_i8.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i9.TicketOverviewFacade>(
      () => _i10.FirebaseTicketOverviewFacade(get<_i6.FirebaseFirestore>()));
  gh.lazySingleton<_i11.AuthFacade>(() => _i12.FirebaseAuthFacade(
      get<_i5.FirebaseAuth>(), get<_i8.GoogleSignIn>()));
  gh.lazySingleton<_i13.ClubOverviewFacade>(
      () => _i14.FirebaseClubOverviewFacade(get<_i6.FirebaseFirestore>()));
  gh.factory<_i4.ClubsOverviewCubit>(
      () => _i4.ClubsOverviewCubit(get<_i13.ClubOverviewFacade>()));
  gh.factory<_i15.SignInFormCubit>(
      () => _i15.SignInFormCubit(get<_i11.AuthFacade>()));
  gh.factory<_i16.TicketOverviewCubit>(
      () => _i16.TicketOverviewCubit(get<_i9.TicketOverviewFacade>()));
  gh.factory<_i17.AuthCubit>(() => _i17.AuthCubit(get<_i11.AuthFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends _i18.FirebaseInjectableModule {}
