import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver/application/clubs/club_favorite/club_favorite_cubit.dart';
import 'package:raver/application/clubs/clubs_overview/clubs_overview_bloc.dart';
import 'package:raver/application/core/deep_links_utils.dart';
import 'package:raver/application/core/user_location/user_location_cubit.dart';
import 'package:raver/application/events/event_favorite/event_favorite_cubit.dart';
import 'package:raver/application/profile/profile_cubit.dart';
import 'package:raver/application/push_notifications/push_notifications_cubit.dart';
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
  final PushNotificationsCubit _pushNotificationsCubit;
  final Stripe _stripe;
  final FirebaseMessaging _firebaseMessaging;
  final NetworkCheckCubit _networkCheckCubit;

  StreamSubscription? _profileSub;
  StreamSubscription? _locationSub;
  StreamSubscription? _eventsSub;
  StreamSubscription? _clubsSub;
  StreamSubscription? _eventFavoritesSub;
  StreamSubscription? _clubFavoritesSub;
  StreamSubscription? _ticketsSub;
  StreamSubscription? _filtersSub;
  StreamSubscription? _pushNotificationsSub;

  WelcomeLoadingCubit({
    required ProfileCubit profileCubit,
    required UserLocationCubit userLocationCubit,
    required EventOverviewBloc eventOverviewBloc,
    required ClubsOverviewBloc clubsOverviewBloc,
    required EventFavoriteCubit eventFavoriteCubit,
    required ClubFavoriteCubit clubFavoriteCubit,
    required TicketListCubit ticketListCubit,
    required AvailableFiltersCubit availableFiltersCubit,
    required PushNotificationsCubit pushNotificationsCubit,
    required Stripe stripe,
    required FirebaseMessaging firebaseMessaging,
    required NetworkCheckCubit networkCheckCubit,
  })  : _profileCubit = profileCubit,
        _userLocationCubit = userLocationCubit,
        _eventOverviewBloc = eventOverviewBloc,
        _clubsOverviewBloc = clubsOverviewBloc,
        _eventFavoriteCubit = eventFavoriteCubit,
        _clubFavoriteCubit = clubFavoriteCubit,
        _ticketListCubit = ticketListCubit,
        _availableFiltersCubit = availableFiltersCubit,
        _pushNotificationsCubit = pushNotificationsCubit,
        _stripe = stripe,
        _firebaseMessaging = firebaseMessaging,
        _networkCheckCubit = networkCheckCubit,
        super(WelcomeLoadingState.initial());

  Future<void> loadDependencies(BuildContext context) async {
    if (state.status == CubitStatus.loading ||
        state.status == CubitStatus.success) return;

    emit(state.copyWith(status: CubitStatus.loading));

    if (!await _networkCheckCubit.checkNetworkConnection()) {
      emit(state.copyWith(hasConnection: false));
      return;
    }

    _initUserLocationCubit();
    _initTickets();
    _initFavoriteEvents();
    _initFavoriteClubs();
    _initClubs();
    _initAvailableFiltersCubit();
    await _initStripe();
    await _initPushNotifications(context);
    await _initDynamicLinks(context);
  }

  initUserProfile() {
    _profileCubit.getUserProfile();
    _profileSub = _profileCubit.stream.listen((event) {
      _checkAndEmitFailure(event.initialStatus);
      _emitSuccessIfAllLoaded();
      if (event.initialStatus.isSuccess() && !state.status.isSuccess()) {
        emit(state.copyWith(username: some(event.user.username)));
      }
    });
  }

  void _emitSuccessIfAllLoaded() {
    if (state.status.isSuccess()) return;

    if (_allDependenciesLoaded()) {
      emit(
        state.copyWith(
          dependenciesLoaded: true,
          status: CubitStatus.success,
        ),
      );
    }
  }

  void _checkAndEmitFailure(CubitStatus cubitStatus) {
    if (cubitStatus == CubitStatus.failure) {
      emit(state.copyWith(status: CubitStatus.failure));
    }
  }

  _initEvents() {
    var filters = EventFilters.empty();

    final userLocation = _userLocationCubit.state.userLocation;

    if (userLocation.isSome() && userLocation.getOrCrash().isNotEmpty) {
      final maxDistanceFilters = filters.maxDistanceFilter;
      filters = filters.copyWith(
        maxDistanceFilter: maxDistanceFilters.copyWith(
          userLocation: userLocation.getOrCrash(),
        ),
      );
    }

    _eventOverviewBloc.add(
      EventOverviewEvent.eventsFetched(
        filters,
        EventSortModel.empty(),
      ),
    );

    _eventsSub = _eventOverviewBloc.stream.listen((event) {
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

    _clubsSub = _clubsOverviewBloc.stream.listen((event) {
      _checkAndEmitFailure(event.status);
      _emitSuccessIfAllLoaded();
    });
  }

  _initTickets() {
    _ticketListCubit.fetchTickets();
    _ticketsSub = _ticketListCubit.stream.listen((event) {
      _checkAndEmitFailure(event.initialStatus);
      _emitSuccessIfAllLoaded();
    });
  }

  _initFavoriteEvents() {
    _eventFavoriteCubit.getFavoriteEvents();
    _eventFavoritesSub = _eventFavoriteCubit.stream.listen((event) {
      _checkAndEmitFailure(event.status);
      _emitSuccessIfAllLoaded();
    });
  }

  _initFavoriteClubs() {
    _clubFavoriteCubit.getFavoriteClubs();
    _clubFavoritesSub = _clubFavoriteCubit.stream.listen((event) {
      _checkAndEmitFailure(event.status);
      _emitSuccessIfAllLoaded();
    });
  }

  _initUserLocationCubit() {
    _userLocationCubit.requestUserLocationOnStart();
    _locationSub = _userLocationCubit.stream.listen((event) {
      _emitSuccessIfAllLoaded();
      if (!event.isLoading) {
        _initEvents();
      }
    });
  }

  _initAvailableFiltersCubit() {
    _availableFiltersCubit.getAvailableFilters();
    _filtersSub = _availableFiltersCubit.stream.listen((event) {
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

  Future<void> _initPushNotifications(BuildContext context) async {
    final settings = await _firebaseMessaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      await _pushNotificationsCubit.initialize(context);

      FirebaseMessaging.instance.getInitialMessage().then(
        (message) async {
          if (message?.data != null) {
            await handleDeepLink(context, message!.data);
          }
        },
      );

      FirebaseMessaging.onMessage.listen(
        (message) async {
          if (message.notification != null) {
            await _pushNotificationsCubit.showNotification(message);
          }
        },
      );

      FirebaseMessaging.onMessageOpenedApp.listen(
        (message) async {
          await handleDeepLink(context, message.data);
        },
      );
    }
  }

  _initDynamicLinks(BuildContext context) async {
    final initialLink = await FirebaseDynamicLinks.instance.getInitialLink();

    if (initialLink != null) {
      await handleDeepLink(context, initialLink.link.queryParameters);
    }

    FirebaseDynamicLinks.instance.onLink.listen(
      (data) async {
        await handleDeepLink(context, data.link.queryParameters);
      },
    );
  }

  Future<void> _initStripe() async {
    Stripe.publishableKey = dotenv.env[stripePublishableKey]!;

    Stripe.merchantIdentifier = 'merchant.com.raverteam.tonight';

    Stripe.urlScheme = 'com.raverteam.tonight';

    await _stripe.applySettings();
  }

  _allDependenciesLoaded() {
    return !_userLocationCubit.state.isLoading &&
        _profileCubit.state.initialStatus == CubitStatus.success &&
        _eventOverviewBloc.state.status == CubitStatus.success &&
        _clubsOverviewBloc.state.status == CubitStatus.success &&
        _ticketListCubit.state.initialStatus == CubitStatus.success &&
        _eventFavoriteCubit.state.status == CubitStatus.success &&
        _clubFavoriteCubit.state.status == CubitStatus.success &&
        _pushNotificationsCubit.state.status == CubitStatus.success &&
        _availableFiltersCubit.state
            .maybeWhen(orElse: () => false, loadSuccess: (_) => true);
  }

  @override
  Future<void> close() {
    _filtersSub?.cancel();
    _locationSub?.cancel();
    _clubFavoritesSub?.cancel();
    _eventFavoritesSub?.cancel();
    _ticketsSub?.cancel();
    _eventsSub?.cancel();
    _clubsSub?.cancel();
    _profileSub?.cancel();
    _pushNotificationsSub?.cancel();
    return super.close();
  }
}
