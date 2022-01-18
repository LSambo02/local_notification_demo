import 'package:flutter/material.dart';
import 'package:local_demo/notification_manager.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen1')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => createPlantFoodNotification(),
          child: const Text('Shoot Notification'),
        ),
      ),
    );
  }
}
