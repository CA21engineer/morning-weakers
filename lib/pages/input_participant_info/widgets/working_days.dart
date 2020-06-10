import 'package:flutter/material.dart';

class WorkingDays extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Text('稼働参加日数(単位は日)'),
        ListTile(
          title: const Text('1'),
          leading: Radio(
            value: 1,
            activeColor: Theme.of(context).primaryColor,
          ),
        ),
        ListTile(
          title: const Text('2'),
          leading: Radio(
            value: 2,
            activeColor: Theme.of(context).primaryColor,
          ),
        ),
        ListTile(
          title: const Text('3'),
          leading: Radio(
            value: 3,
            activeColor: Theme.of(context).primaryColor,
          ),
        ),
        ListTile(
          title: const Text('4'),
          leading: Radio(
            value: 4,
            activeColor: Theme.of(context).primaryColor,
          ),
        ),
        ListTile(
          title: const Text('5'),
          leading: Radio(
            value: 5,
            activeColor: Theme.of(context).primaryColor,
          ),
        ),
      ],
    );
  }
}