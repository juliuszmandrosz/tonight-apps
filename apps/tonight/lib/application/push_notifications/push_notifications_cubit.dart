import 'dart:convert';

import 'package:account_settings/domain/domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:common/common.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/application/core/deep_links_utils.dart';

part 'push_notifications_cubit.freezed.dart';
part 'push_notifications_state.dart';

class PushNotificationsCubit extends Cubit<PushNotificationsState> {
  final FlutterLocalNotificationsPlugin _notificationsPlugin;
  final UserAccountFacade _accountFacade;
  final FirebaseMessaging _messaging;

  PushNotificationsCubit({
    required FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin,
    required UserAccountFacade userAccountFacade,
    required FirebaseMessaging firebaseMessaging,
  })  : _notificationsPlugin = flutterLocalNotificationsPlugin,
        _accountFacade = userAccountFacade,
        _messaging = firebaseMessaging,
        super(PushNotificationsState.initial());

  Future<void> initialize(BuildContext context) async {
    emit(state.copyWith(status: CubitStatus.loading));

    const androidInit = AndroidInitializationSettings('@mipmap/ic_launcher');

    const iosInit = IOSInitializationSettings();

    const initSetting = InitializationSettings(
      android: androidInit,
      iOS: iosInit,
    );

    await _notificationsPlugin.initialize(
      initSetting,
      onSelectNotification: (data) async {
        if (data == null) return;
        final payload = json.decode(data);
        await handleDeepLink(context, payload);
      },
    );

    final token = await _messaging.getToken();

    _messaging.onTokenRefresh.listen(
      (token) async => await _accountFacade.savePushNotificationsToken(token),
    );

    final failureOrSuccess =
        await _accountFacade.savePushNotificationsToken(token!);

    failureOrSuccess.fold(
      (failure) => emit(state.copyWith(status: CubitStatus.failure)),
      (success) => emit(state.copyWith(status: CubitStatus.success)),
    );
  }

  showNotification(RemoteMessage message) async {
    await _notificationsPlugin.show(
      message.hashCode,
      message.notification!.title,
      message.notification!.body,
      _getNotificationDetails(),
      payload: json.encode(message.data),
    );
  }

  _getNotificationDetails() {
    const androidDetails = AndroidNotificationDetails(
      'high_importance_channel',
      'High Importance Notifications',
      channelDescription: 'This channel is used for important notifications.',
      importance: Importance.max,
      priority: Priority.high,
    );

    const iosDetails = IOSNotificationDetails();

    return const NotificationDetails(
      android: androidDetails,
      iOS: iosDetails,
    );
  }
}
