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
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              _memberInfo(),
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

  //TwitterやGithubなどののリンク置き場
  Widget _links() {}
}
