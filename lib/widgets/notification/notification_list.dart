import 'package:chefio/widgets/notification/notification_header.dart';
import 'package:chefio/widgets/notification/notification_tile.dart';
import 'package:flutter/material.dart';

class NotificationList extends StatelessWidget {
  final int? count;
  final String day;
  const NotificationList({
    this.count,
    required this.day,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        NotificationHeader(text: day),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: count ?? 1,
          itemBuilder: (BuildContext context, int index) {
            return NotificationTile(
              index: index,
            );
          },
        ),
      ],
    );
  }
}
