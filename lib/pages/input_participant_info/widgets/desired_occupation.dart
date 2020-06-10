import 'package:flutter/material.dart';

class DesiredOccupation extends StatelessWidget {
  final List<String> desires = ['参加希望職種(第1希望)', '参加希望職種(第2希望)', '参加希望職種(第3希望)' ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: desires.map((desire) =>
        Column(
          children: <Widget>[
            Text(desire),
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
                  .map<DropdownMenuItem<String>>((String value) =>
                  DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  )
              ).toList(),
            ),
          ],
        )
      ).toList(),
    );
  }
}
