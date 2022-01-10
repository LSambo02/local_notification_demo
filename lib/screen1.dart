import 'package:flutter/material.dart';
import 'package:local_demo/notification_manager.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen1')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            NotificationsManager()
                .shootNotification('title', 'body', 'pay111', context);
          },
          child: const Text('Shoot Notification'),
        ),
      ),
    );
  }
}
