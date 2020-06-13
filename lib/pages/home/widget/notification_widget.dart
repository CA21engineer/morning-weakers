import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:morning_weakers/models/models.dart' as model;
import 'package:morning_weakers/pages/home/home_state.dart';
import 'package:provider/provider.dart';

class NotificationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<model.Notification> notification = context.select<HomeState, List<model.Notification>>(
      (state) => state.hackathon.notifications,
    );
    // ignore: cascade_invocations
    notification.sort((a, b) => a.createdAt.compareTo(b.createdAt));

    return Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.cyan[100],
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.cyan[600]),
        ),
        child: ListTile(
          title: Text(notification[0].title),
          subtitle: Text(notification[0].description),
          trailing: Icon(Icons.arrow_forward_ios),
        ));
  }
}
