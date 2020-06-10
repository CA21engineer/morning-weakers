import 'package:flutter/material.dart';

class DesiredOccupation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Text('参加希望職種(第1希望)'),
        DropdownButton<String>(
        value: 'iOS',
          icon: const Icon(Icons.arrow_downward),
          iconSize: 24,
          elevation: 16,
          style: TextStyle(color: Theme.of(context).primaryColor),
          underline: Container(
            height: 2,
            color: Theme.of(context).accentColor,
          ),
          onChanged: (String newValue) {},
          items: <String>['iOS', 'Android', 'Webフロント', 'サーバーサイド']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
        const Text('参加希望職種(第2希望)'),
        DropdownButton<String>(
          value: 'iOS',
          icon: const Icon(Icons.arrow_downward),
          iconSize: 24,
          elevation: 16,
          style: TextStyle(color: Theme.of(context).primaryColor),
          underline: Container(
            height: 2,
            color: Theme.of(context).accentColor,
          ),
          onChanged: (String newValue) {},
          // TODO: 既に選んだ職種は選択不可にする
          items: <String>['iOS', 'Android', 'Webフロント', 'サーバーサイド']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
        const Text('参加希望職種(第3希望)'),
        DropdownButton<String>(
          value: 'iOS',
          icon: const Icon(Icons.arrow_downward),
          iconSize: 24,
          elevation: 16,
          style: TextStyle(color: Theme.of(context).primaryColor),
          underline: Container(
            height: 2,
            color: Theme.of(context).accentColor,
          ),
          onChanged: (String newValue) {},
          // TODO: 既に選んだ職種は選択不可にする
          items: <String>['iOS', 'Android', 'Webフロント', 'サーバーサイド']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ],
    );
  }
}