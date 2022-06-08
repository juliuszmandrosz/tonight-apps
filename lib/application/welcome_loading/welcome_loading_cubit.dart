import 'package:bloc/bloc.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver/application/clubs/club_favorite/club_favorite_cubit.dart';
import 'package:raver/application/clubs/clubs_overview/clubs_overview_bloc.dart';
import 'package:raver/application/core/user_location/user_location_cubit.dart';
import 'package:raver/application/events/event_favorite/event_favorite_cubit.dart';
import 'package:raver/application/events/event_filters/event_filters_cubit.dart';
import 'package:raver/application/initialization/remote_config_cubit.dart';
import 'package:raver/application/profile/profile_cubit.dart';
import 'package:raver/application/ticket_list/ticket_list_cubit.dart';
import 'package:raver_clubs/raver_clubs.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/application/application.dart';

part 'welcome_loading_cubit.freezed.dart';
part 'welcome_loading_state.dart';

class WelcomeLoadingCubit extends Cubit<WelcomeLoadingState> {
  final ProfileCubit _profileCubit;
  final UserLocationCubit _userLocationCubit;
  final RemoteConfigCubit _remoteConfigCubit;
  final EventOverviewBloc _eventOverviewBloc;
  final EventFiltersCubit _eventFiltersCubit;
  final ClubsOverviewBloc _clubsOverviewBloc;
  final EventFavoriteCubit _eventFavoriteCubit;
  final ClubFavoriteCubit _clubFavoriteCubit;
  final TicketListCubit _ticketListCubit;

  WelcomeLoadingCubit({
    required ProfileCubit profileCubit,
    required UserLocationCubit userLocationCubit,
    required RemoteConfigCubit remoteConfigCubit,
    required EventOverviewBloc eventOverviewBloc,
    required EventFiltersCubit eventFiltersCubit,
    required ClubsOverviewBloc clubsOverviewBloc,
    required EventFavoriteCubit eventFavoriteCubit,
    required ClubFavoriteCubit clubFavoriteCubit,
    required TicketListCubit ticketListCubit,
  })  : _profileCubit = profileCubit,
        _userLocationCubit = userLocationCubit,
        _remoteConfigCubit = remoteConfigCubit,
        _eventOverviewBloc = eventOverviewBloc,
        _eventFiltersCubit = eventFiltersCubit,
        _clubsOverviewBloc = clubsOverviewBloc,
        _eventFavoriteCubit = eventFavoriteCubit,
        _clubFavoriteCubit = clubFavoriteCubit,
        _ticketListCubit = ticketListCubit,
        super(WelcomeLoadingState.initial());

  void loadDependencies() async {
    if (state.status != CubitStatus.initial) return;

    emit(state.copyWith(status: CubitStatus.loading));

    _initRemoteConfigCubit();
    _initProfileCubit();
    _initUserLocationCubit();
    _initEvents();
    _initClubs();
    _initTickets();
    _initFavoriteEvents();
    _initFavoriteClubs();

    Stripe.publishableKey =
        FirebaseRemoteConfig.instance.getString(stripePublishableKey);

    await Stripe.instance.applySettings();
  }

  void _emitSuccessIfAllLoaded() {
    if (_allDependenciesLoaded()) {
      final isOnboardingCompleted = _onboardingCompleted();
      emit(
        state.copyWith(
          dependenciesLoaded: true,
          onboardingCompleted: isOnboardingCompleted,
          status: CubitStatus.success,
        ),
      );
    }
  }

  void _checkAndEmitFailure(CubitStatus cubitStatus) {
    if (cubitStatus == CubitStatus.failure) {
      emit(state.copyWith(isFailure: true));
    }
  }

  _initEvents() {
    _eventFiltersCubit.resetFilters();
    _eventOverviewBloc.stream.listen((event) {
      _checkAndEmitFailure(event.status);
      _emitSuccessIfAllLoaded();
    });
  }

  _initClubs() {
    _clubsOverviewBloc
        .add(ClubsOverviewEvent.clubsFetched(ClubFilters.empty()));
    _clubsOverviewBloc.stream.listen((event) {
      _checkAndEmitFailure(event.status);
      _emitSuccessIfAllLoaded();
    });
  }

  _initTickets() {
    _ticketListCubit.fetchTickets();
    _ticketListCubit.stream.listen((event) {
      _checkAndEmitFailure(event.status);
      _emitSuccessIfAllLoaded();
    });
  }

  _initFavoriteEvents() {
    _eventFavoriteCubit.getFavoriteEvents();
    _eventFavoriteCubit.stream.listen((event) {
      _checkAndEmitFailure(event.status);
      _emitSuccessIfAllLoaded();
    });
  }

  _initFavoriteClubs() {
    _clubFavoriteCubit.getFavoriteClubs();
    _clubFavoriteCubit.stream.listen((event) {
      _checkAndEmitFailure(event.status);
      _emitSuccessIfAllLoaded();
    });
  }

  _initRemoteConfigCubit() {
    _remoteConfigCubit.setupRemoteConfig();
    _remoteConfigCubit.stream.listen((event) {
      _checkAndEmitFailure(event.cubitStatus);
      _emitSuccessIfAllLoaded();
    });
  }

  _initProfileCubit() {
    _profileCubit.getUserProfile();
    _profileCubit.stream.listen((event) {
      _checkAndEmitFailure(event.status);
      _emitSuccessIfAllLoaded();
    });
  }

  _initUserLocationCubit() {
    _userLocationCubit.requestUserLocationOnStart();
    _userLocationCubit.stream.listen((event) {
      _emitSuccessIfAllLoaded();
    });
  }

  _allDependenciesLoaded() {
    return _remoteConfigCubit.state.cubitStatus == CubitStatus.success &&
        !_userLocationCubit.state.isLoading &&
        _profileCubit.state.status == CubitStatus.success &&
        _eventOverviewBloc.state.status == CubitStatus.success &&
        _clubsOverviewBloc.state.status == CubitStatus.success &&
        _ticketListCubit.state.status == CubitStatus.success &&
        _eventFavoriteCubit.state.status == CubitStatus.success &&
        _clubFavoriteCubit.state.status == CubitStatus.success;
  }

  _onboardingCompleted() {
    return _profileCubit.state.user.username.isNotEmpty;
  }
}
