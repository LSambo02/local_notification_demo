import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  String? notificationContent;

  Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final notificationContent = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(title: const Text('Screen2')),
      body: Center(
        child: Text(notificationContent.toString()),
      ),
    );
  }
}
