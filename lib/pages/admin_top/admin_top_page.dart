import 'package:flutter/material.dart';
import 'package:morning_weakers/pages/admin_top/widgets/list_container.dart';

class AdminTopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('管理者画面'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () => null,
//            onPressed: () => Navigator.pushNamed(context, '/notification_page'),
          ),
          // action button
        ],
      ),
      body: _getListContainer(context),
    );
  }

  Widget _getListContainer(BuildContext context) {
    final List<List<String>> titleItem = [
      ['全体連絡入力', '/'],
      ['グループ分け結果', '/'],
      ['参加者情報詳細', '/']
    ];

    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: titleItem
            .map(
              (element) => ListContainer(
                onTap: () => null,
                //          onTap: () => Navigator.pushNamed(context, element[1]),
                titleName: element[0],
              ),
            )
            .toList(),
      ),
    );
  }
}
