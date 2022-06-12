import 'package:bloc/bloc.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver/application/clubs/club_favorite/club_favorite_cubit.dart';
import 'package:raver/application/clubs/clubs_overview/clubs_overview_bloc.dart';
import 'package:raver/application/core/user_location/user_location_cubit.dart';
import 'package:raver/application/events/event_favorite/event_favorite_cubit.dart';
import 'package:raver/application/profile/profile_cubit.dart';
import 'package:raver/application/ticket_list/ticket_list_cubit.dart';
import 'package:raver_clubs/raver_clubs.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/application/application.dart';
import 'package:raver_events/domain/domain.dart';

part 'welcome_loading_cubit.freezed.dart';
part 'welcome_loading_state.dart';

class WelcomeLoadingCubit extends Cubit<WelcomeLoadingState> {
  final ProfileCubit _profileCubit;
  final UserLocationCubit _userLocationCubit;
  final EventOverviewBloc _eventOverviewBloc;
  final ClubsOverviewBloc _clubsOverviewBloc;
  final EventFavoriteCubit _eventFavoriteCubit;
  final ClubFavoriteCubit _clubFavoriteCubit;
  final TicketListCubit _ticketListCubit;
  final AvailableFiltersCubit _availableFiltersCubit;
  final Stripe _stripe;
  final FirebaseRemoteConfig _firebaseRemoteConfig;

  WelcomeLoadingCubit({
    required ProfileCubit profileCubit,
    required UserLocationCubit userLocationCubit,
    required EventOverviewBloc eventOverviewBloc,
    required ClubsOverviewBloc clubsOverviewBloc,
    required EventFavoriteCubit eventFavoriteCubit,
    required ClubFavoriteCubit clubFavoriteCubit,
    required TicketListCubit ticketListCubit,
    required AvailableFiltersCubit availableFiltersCubit,
    required Stripe stripe,
    required FirebaseRemoteConfig firebaseRemoteConfig,
  })  : _profileCubit = profileCubit,
        _userLocationCubit = userLocationCubit,
        _eventOverviewBloc = eventOverviewBloc,
        _clubsOverviewBloc = clubsOverviewBloc,
        _eventFavoriteCubit = eventFavoriteCubit,
        _clubFavoriteCubit = clubFavoriteCubit,
        _ticketListCubit = ticketListCubit,
        _availableFiltersCubit = availableFiltersCubit,
        _stripe = stripe,
        _firebaseRemoteConfig = firebaseRemoteConfig,
        super(WelcomeLoadingState.initial());

  Future<void> loadDependencies() async {
    if (state.status != CubitStatus.initial) return;

    emit(state.copyWith(status: CubitStatus.loading));

    _initProfileCubit();
    _initUserLocationCubit();
    _initTickets();
    _initFavoriteEvents();
    _initFavoriteClubs();
    _initClubs();
    _initEvents();
    _initAvailableFiltersCubit();
    await _initStripe();
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
    _eventOverviewBloc.add(
      EventOverviewEvent.eventsFetched(
        EventFilters.empty(),
        SortModel.empty(),
      ),
    );

    _eventOverviewBloc.stream.listen((event) {
      _checkAndEmitFailure(event.status);
      _emitSuccessIfAllLoaded();
    });
  }

  _initClubs() {
    _clubsOverviewBloc.add(
      ClubsOverviewEvent.clubsFetched(
        ClubFilters.empty(),
      ),
    );

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

  _initAvailableFiltersCubit() {
    _availableFiltersCubit.getAvailableFilters();
    _availableFiltersCubit.stream.listen((event) {
      final status = event.map(
        initial: (_) => CubitStatus.initial,
        loadInProgress: (_) => CubitStatus.loading,
        loadSuccess: (_) => CubitStatus.success,
        loadFailure: (_) => CubitStatus.failure,
      );
      _checkAndEmitFailure(status);
      _emitSuccessIfAllLoaded();
    });
  }

  Future<void> _initStripe() async {
    Stripe.publishableKey =
        _firebaseRemoteConfig.getString(stripePublishableKey);

    await _stripe.applySettings();
  }

  _allDependenciesLoaded() {
    return !_userLocationCubit.state.isLoading &&
        _profileCubit.state.status == CubitStatus.success &&
        _eventOverviewBloc.state.status == CubitStatus.success &&
        _clubsOverviewBloc.state.status == CubitStatus.success &&
        _ticketListCubit.state.status == CubitStatus.success &&
        _eventFavoriteCubit.state.status == CubitStatus.success &&
        _clubFavoriteCubit.state.status == CubitStatus.success &&
        _availableFiltersCubit.state
            .maybeWhen(orElse: () => false, loadSuccess: (_) => true);
  }

  _onboardingCompleted() {
    return _profileCubit.state.user.username.isNotEmpty;
  }
}
