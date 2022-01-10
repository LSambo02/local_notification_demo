import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  String notificationContent;

  Screen2(this.notificationContent, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen2')),
      body: Center(
        child: Text(notificationContent),
      ),
    );
  }
}
