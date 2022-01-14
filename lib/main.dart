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

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance!.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // TODO: implement didChangeAppLifecycleState
    super.didChangeAppLifecycleState(state);
    print('Agora estamos em $state | route: $route');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: MyApp.navigatorKey,
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
