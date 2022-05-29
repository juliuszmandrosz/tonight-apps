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
import 'package:raver/application/user_favorites/club_favorites/user_club_favorites_cubit.dart';
import 'package:raver/application/user_favorites/event_favorites/user_event_favorites_cubit.dart';
import 'package:raver_clubs/raver_clubs.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/application/application.dart';

part 'welcome_loading_cubit.freezed.dart';
part 'welcome_loading_state.dart';

// await context.read<EventFavoriteCubit>().getFavoriteEventIds();
// await context.read<ClubFavoriteCubit>().getFavoriteClubIds();
// context.read<UserEventFavoritesCubit>().getFavorites();
// context.read<UserClubFavoritesCubit>().getFavorites();
// await context.read<TicketListCubit>().fetchTickets();
class WelcomeLoadingCubit extends Cubit<WelcomeLoadingState> {
  final ProfileCubit _profileCubit;
  final UserLocationCubit _userLocationCubit;
  final RemoteConfigCubit _remoteConfigCubit;
  final EventOverviewBloc _eventOverviewBloc;
  final EventFiltersCubit _eventFiltersCubit;
  final ClubsOverviewBloc _clubsOverviewBloc;
  final EventFavoriteCubit _eventFavoriteCubit;
  final ClubFavoriteCubit _clubFavoriteCubit;
  final UserEventFavoritesCubit _userEventFavoritesCubit;
  final UserClubFavoritesCubit _userClubFavoritesCubit;
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
    required UserEventFavoritesCubit userEventFavoritesCubit,
    required UserClubFavoritesCubit userClubFavoritesCubit,
    required TicketListCubit ticketListCubit,
  })  : _profileCubit = profileCubit,
        _userLocationCubit = userLocationCubit,
        _remoteConfigCubit = remoteConfigCubit,
        _eventOverviewBloc = eventOverviewBloc,
        _eventFiltersCubit = eventFiltersCubit,
        _clubsOverviewBloc = clubsOverviewBloc,
        _eventFavoriteCubit = eventFavoriteCubit,
        _clubFavoriteCubit = clubFavoriteCubit,
        _userEventFavoritesCubit = userEventFavoritesCubit,
        _userClubFavoritesCubit = userClubFavoritesCubit,
        _ticketListCubit = ticketListCubit,
        super(WelcomeLoadingState.initial());

  void loadDependencies() async {
    _initRemoteConfigCubit();
    _initProfileCubit();
    _initUserLocationCubit();
    _initEvents();
    _initClubs();
    _initTickets();
    _initFavoriteEvents();
    _initFavoriteClubs();
    _initUserFavoriteEvents();
    _initUserFavoriteClubs();

    Stripe.publishableKey =
        FirebaseRemoteConfig.instance.getString(stripePublishableKey);

    await Stripe.instance.applySettings();
  }

  void _emitSuccessIfAllLoaded() {
    if (_allDependenciesLoaded()) {
      final isOnboardingCompleted = _onboardingCompleted();
      emit(state.copyWith(
          dependenciesLoaded: true,
          onboardingCompleted: isOnboardingCompleted));
    }
  }

  void _checkAndEmitFailure(CubitStatus cubitStatus) {
    if (cubitStatus == CubitStatus.failure) {
      emit(state.copyWith(isFailure: true));
    }
  }

  _initEvents() {
    _eventFiltersCubit.resetFilters();
    _eventFiltersCubit.resetSelectedDay();
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
    _eventFavoriteCubit.getFavoriteEventIds();
    _eventFavoriteCubit.stream.listen((event) {
      _checkAndEmitFailure(event.status);
      _emitSuccessIfAllLoaded();
    });
  }

  _initFavoriteClubs() {
    _clubFavoriteCubit.getFavoriteClubIds();
    _clubFavoriteCubit.stream.listen((event) {
      _checkAndEmitFailure(event.status);
      _emitSuccessIfAllLoaded();
    });
  }

  _initUserFavoriteEvents() {
    _userEventFavoritesCubit.getFavorites();
    _userEventFavoritesCubit.stream.listen((event) {
      _checkAndEmitFailure(event.status);
      _emitSuccessIfAllLoaded();
    });
  }

  _initUserFavoriteClubs() {
    _userClubFavoritesCubit.getFavorites();
    _userClubFavoritesCubit.stream.listen((event) {
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
        _clubFavoriteCubit.state.status == CubitStatus.success &&
        _userEventFavoritesCubit.state.status == CubitStatus.success &&
        _userClubFavoritesCubit.state.status == CubitStatus.success;
  }

  _onboardingCompleted() {
    return _profileCubit.state.user.username.isNotEmpty;
  }
}
