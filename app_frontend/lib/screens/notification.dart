import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification'),
      ),
      body: Center(
        child: Card(
          child:
              Padding(padding: EdgeInsets.all(10), child: Text('Notification')),
        ),
      ),
    );
  }
}
