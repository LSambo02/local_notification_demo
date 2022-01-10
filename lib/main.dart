import 'package:flutter/material.dart';
import 'package:local_demo/notification_manager.dart';
import 'package:local_demo/screen1.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await NotificationsManager().initializeNotifications();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: NotificationsManager.navigatorKey,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Screen1(),
    );
  }
}
