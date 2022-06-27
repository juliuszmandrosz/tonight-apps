import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver/presentation/routes/app_router.dart';
import 'package:raver_common/raver_common.dart';

part 'push_notifications_cubit.freezed.dart';
part 'push_notifications_state.dart';

class PushNotificationsCubit extends Cubit<PushNotificationsState> {
  final FlutterLocalNotificationsPlugin _notificationsPlugin;

  PushNotificationsCubit(this._notificationsPlugin)
      : super(PushNotificationsState.initial());

  initialize(BuildContext context) {
    const androidInit = AndroidInitializationSettings('@mipmap/ic_launcher');

    const iosInit = IOSInitializationSettings();

    const initSetting = InitializationSettings(
      android: androidInit,
      iOS: iosInit,
    );

    _notificationsPlugin.initialize(
      initSetting,
      onSelectNotification: (data) async {
        if (data == null) return;
        final payload = json.decode(data);
        final eventId = payload['eventId'];
        if (eventId != null) {
          context.pushRoute(EventDetailsRoute(eventId: eventId));
        }
      },
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
