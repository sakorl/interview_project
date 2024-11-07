import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
              'Notification Screen')), // You can customize the UI further
      body: const Center(child: Text('This is the Notification Screen')),
    );
  }
}
