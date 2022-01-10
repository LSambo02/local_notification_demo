import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:local_demo/screen2.dart';

class NotificationsManager {
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  Future<void> initializeNotifications() async {
    AndroidInitializationSettings initializationSettingsAndroid =
        const AndroidInitializationSettings('ic_launcher');

    const IOSInitializationSettings initializationSettingsIOS =
        IOSInitializationSettings();

    final InitializationSettings initializationSettings =
        InitializationSettings(
            android: initializationSettingsAndroid,
            iOS: initializationSettingsIOS);
    log('NotificationsManager.dart::: notification!!!');
    flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onSelectNotification: onSelectNotification);
  }

  shootNotification(String title, String body, String payload, context) async {
    // var flutterLocalNotificationsPlugin =
    //     HealthCareApp.getNotificationsPlugin(context);

    var androidNotificationDetails = const AndroidNotificationDetails(
      '00Affinity',
      'Affinity',
      category: 'information',
      importance: Importance.high,
    );
    var iOSNotificationDetails = IOSNotificationDetails();
    var generalNotificationDetails = NotificationDetails(
        android: androidNotificationDetails, iOS: iOSNotificationDetails);
    await flutterLocalNotificationsPlugin
        .show(002, title, body, generalNotificationDetails, payload: payload);
  }

  showNotification(String? payload) {
    navigatorKey.currentState!
        .push(MaterialPageRoute(builder: (context) => Screen2(payload!)));
  }

  void onSelectNotification(String? payload) async {
    log('main.dart::: notification arrived!!!');

    if (payload != null) {
      log('notification payload: $payload');
    }

    // print('payloadReference: $payload');
    // BuildContext _context = navigatorKey.currentContext;

    showNotification(payload!);
  }
}
