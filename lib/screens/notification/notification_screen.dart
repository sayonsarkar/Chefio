import 'package:chefio/widgets/notification/notification_list.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            NotificationList(day: 'New'),
            NotificationList(day: 'Today', count: 3),
            NotificationList(day: 'Yesterday', count: 3)
          ],
        ),
      ),
    );
  }
}
