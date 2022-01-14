import 'package:flutter/material.dart';
import 'package:local_demo/constants.dart';
import 'package:local_demo/notification_manager.dart';
import 'package:local_demo/screen1.dart';
import 'package:local_demo/screen2.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await NotificationsManager()
      .initializeNotifications()
      .whenComplete(() => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: navigatorKey,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: route,
      routes: {
        screen1: (context) => Screen1(),
        screen2: (context) => Screen2()
      },
    );
  }
}
