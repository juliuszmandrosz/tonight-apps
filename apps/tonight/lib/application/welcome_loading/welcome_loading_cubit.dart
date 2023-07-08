import 'dart:async';

import 'package:common/common.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/application/core/deep_links_utils.dart';
import 'package:tonight/application/core/user_location/user_location_cubit.dart';
import 'package:tonight/application/push_notifications/push_notifications_cubit.dart';

part 'welcome_loading_cubit.freezed.dart';
part 'welcome_loading_state.dart';

class WelcomeLoadingCubit extends Cubit<WelcomeLoadingState> {
  final PushNotificationsCubit _pushNotificationsCubit;
  final UserLocationCubit _userLocationCubit;
  final AvailableFiltersCubit _availableFiltersCubit;
  final FirebaseMessaging _firebaseMessaging;
  final Stripe _stripe;

  WelcomeLoadingCubit({
    required PushNotificationsCubit pushNotificationsCubit,
    required AvailableFiltersCubit availableFiltersCubit,
    required UserLocationCubit userLocationCubit,
    required FirebaseMessaging firebaseMessaging,
    required Stripe stripe,
  })  : _pushNotificationsCubit = pushNotificationsCubit,
        _userLocationCubit = userLocationCubit,
        _availableFiltersCubit = availableFiltersCubit,
        _firebaseMessaging = firebaseMessaging,
        _stripe = stripe,
        super(WelcomeLoadingState.initial());

  Future<void> loadDependencies(BuildContext context) async {
    if (state.status == CubitStatus.loading ||
        state.status == CubitStatus.success) return;

    emit(state.copyWith(status: CubitStatus.loading));

    await Future.wait([
      _userLocationCubit.requestUserLocationOnStart(),
      _initPushNotifications(context),
      _initDynamicLinks(context),
    ]);

    emit(state.copyWith(status: CubitStatus.success));

    unawaited(_availableFiltersCubit.getAvailableFilters());

    unawaited(_initStripe());
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

    if (context.mounted &&
        settings.authorizationStatus == AuthorizationStatus.authorized) {
      await _pushNotificationsCubit.initialize(context);

      await FirebaseMessaging.instance.getInitialMessage().then(
        (message) async {
          final lastMessageId =
              _pushNotificationsCubit.state.lastHandledMessageId;
          if (message?.data != null && lastMessageId != message!.messageId) {
            await handleDeepLink(context, message.data);
            _pushNotificationsCubit
                .addLastHandledMessageIdToState(message.messageId);
          }
        },
      );

      FirebaseMessaging.onMessage.listen(
        (message) async {
          final lastMessageId =
              _pushNotificationsCubit.state.lastHandledMessageId;
          if (message.notification != null &&
              lastMessageId != message.messageId) {
            await _pushNotificationsCubit.showNotification(message);
          }
        },
      );

      FirebaseMessaging.onMessageOpenedApp.listen(
        (message) async {
          final lastMessageId =
              _pushNotificationsCubit.state.lastHandledMessageId;
          if (lastMessageId != message.messageId) {
            await handleDeepLink(context, message.data);
            _pushNotificationsCubit
                .addLastHandledMessageIdToState(message.messageId);
          }
        },
      );
    }
  }

  Future<void> _initDynamicLinks(BuildContext context) async {
    final initialLink = await FirebaseDynamicLinks.instance.getInitialLink();

    if (context.mounted && initialLink != null) {
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
}
