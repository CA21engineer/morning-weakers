import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.cyan[100],
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.cyan[600]),
        ),
        child: const ListTile(
          title: Text('[緊急] 発表日変更'),
          subtitle: Text('ごめんなさい！突然ですが、やっぱり発表日を明日に変更します！'),
          trailing: Icon(Icons.arrow_forward_ios),
        ));
  }
}
