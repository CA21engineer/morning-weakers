import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('ホーム画面'),
        ),
        body: Container(
          child: ListView(
            padding: const EdgeInsets.all(20),
            children: <Widget>[
              _memberInfo(),
              _dataTable(),
              //_links(),
            ],
          ),
        ),
      ),
    );
  }

  final List<List<String>> _data = [
    ['鈴木', 'Suzu-K', 'twi-suzu', 'git-suzu', 'All'],
    ['佐藤', 'Sato-U', 'twi-sato', 'git-sato', 'All'],
    ['田中', 'Tana-K', 'twi-tana', 'git-tana', 'All'],
    ['高橋', 'Taka-C', 'twi-taka', 'git-taka', 'All'],
  ];

  final List<List<String>> _hackData = [
    ['Suzu-K', '15hour', 'All'],
    ['Sato-U', '15hour', 'All'],
    ['Tana-K', '15hour', 'All'],
    ['Taka-C', '15hour', 'All'],
  ];

  Widget _memberInfo() {
    return Container(
      color: Colors.lightBlueAccent,
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        children: _data
            .map(
              _memberCard,
            )
            .toList(),
      ),
    );
  }

  Widget _memberCard(List<String> member) {
    return Card(
      child: Center(
        child: Column(
            children: member
                .map(
                  (info) => Text(
                    info,
                  ),
                )
                .toList()),
      ),
    );
  }

  Widget _dataTable() {
    final List<List<String>> _hackData = [
      ['Suzu-K', '15hour', 'All'],
      ['Sato-U', '10hour', 'All'],
      ['Tana-K', '8hour', 'All'],
      ['Taka-C', '12hour', 'All'],
    ];
    return DataTable(
      sortColumnIndex: 1,
      sortAscending: true,
      columns: const [
        DataColumn(label: Text('ユーザ名')),
        DataColumn(label: Text('合計稼働時間'), numeric: true),
        DataColumn(label: Text('技術スタック')),
      ],
      rows: _hackData
          .map(
            (member) => DataRow(
              cells: member
                  .map(
                    (info) => DataCell(
                      Text(info),
                    ),
                  )
                  .toList(),
            ),
          )
          .toList(),
    );
  }

  //TwitterやGithubなどののリンク置き場
  Widget _links() {}
}
