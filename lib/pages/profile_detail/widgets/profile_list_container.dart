import 'package:flutter/material.dart';

class ProfileListContainer extends StatelessWidget {
  const ProfileListContainer({
    @required this.titleName,
    @required this.contentName,
  });

  final String titleName, contentName;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            titleName,
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            contentName,
            textAlign: TextAlign.right,
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
