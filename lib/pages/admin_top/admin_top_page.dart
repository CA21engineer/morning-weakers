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
            icon: Icon(Icons.notifications),
            onPressed: () => null,
//            onPressed: () => Navigator.pushNamed(context, '/notification_page'),
          ),
          // action button
        ],
      ),
      body: _getListContainer(context),
    );
  }

  final List<List<String>> _titleItem = [
    ['全体連絡入力', '/'],
    ['グループ分け結果', '/'],
    ['参加者情報詳細', '/']
  ];

  List<Widget> _getList(BuildContext context) {
    final List<Widget> listContainerList = [];

    for (var i = 0; i < _titleItem.length; i++) {
      listContainerList.add(
        ListContainer(
          onTap: () => null,
          //          onTap: () => Navigator.pushNamed(context, item[1]),
          titleName: _titleItem[i][0],
        ),
      );
    }
    return listContainerList;
  }

  Widget _getListContainer(BuildContext context) => Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: _getList(context),
        ),
      );
}
