import 'dart:developer';

import 'package:awesome_notifications/awesome_notifications.dart';

Future<void> createPlantFoodNotification() async {
  log('notification triggered');
  await AwesomeNotifications().createNotification(
    content: NotificationContent(
      id: createUniqueId(),
      channelKey: 'basic_channel',
      title:
          '${Emojis.money_money_bag + Emojis.plant_cactus} Buy Plant Food!!!',
      body: 'Florist at 123 Main St. has 2 in stock',
      notificationLayout: NotificationLayout.Default,
    ),
  );
}

// class NotificationsManager {
//   FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//       FlutterLocalNotificationsPlugin();
//   // static final GlobalKey<NavigatorState> navigatorKey =
//   //     GlobalKey<NavigatorState>();
//
//   Future<void> initializeNotifications() async {
//     AndroidInitializationSettings initializationSettingsAndroid =
//         const AndroidInitializationSettings('ic_launcher');
//
//     const IOSInitializationSettings initializationSettingsIOS =
//         IOSInitializationSettings();
//
//     final InitializationSettings initializationSettings =
//         InitializationSettings(
//             android: initializationSettingsAndroid,
//             iOS: initializationSettingsIOS);
//     log('NotificationsManager.dart::: notification!!!');
//     await flutterLocalNotificationsPlugin.initialize(initializationSettings,
//         onSelectNotification: onSelectNotification);
//   }
//
//   shootNotification(String title, String body, String payload, context) async {
//     // var flutterLocalNotificationsPlugin =
//     //     HealthCareApp.getNotificationsPlugin(context);
//
//     var androidNotificationDetails = const AndroidNotificationDetails(
//       '00Affinity',
//       'Affinity',
//       category: 'information',
//       importance: Importance.high,
//     );
//     var iOSNotificationDetails = IOSNotificationDetails();
//     var generalNotificationDetails = NotificationDetails(
//         android: androidNotificationDetails, iOS: iOSNotificationDetails);
//     await flutterLocalNotificationsPlugin
//         .show(002, title, body, generalNotificationDetails, payload: payload);
//   }
//
//   showNotification(String? payload) {
//     route = screen2;
//     MyApp.navigatorKey.currentState!.pushNamed(route, arguments: payload!);
//   }
//
//   void onSelectNotification(String? payload) async {
//     log('main.dart::: notification arrived!!!');
//
//     if (payload != null) {
//       log('notification payload: $payload');
//     }
//
//     // print('payloadReference: $payload');
//     // BuildContext _context = navigatorKey.currentContext;
//
//     showNotification(payload!);
//   }
// }

int createUniqueId() {
  return DateTime.now().millisecondsSinceEpoch.remainder(100000);
}
