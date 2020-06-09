import 'package:flutter/material.dart';

class NewProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('プロフィール新規作成'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: <Widget>[
                _profileIcon(),
                _profileDetail(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _profileIcon() {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(50),
        child: Column(
          children: <Widget>[
            Icon(
              Icons.people,
              size: 100,
            ),
            const RaisedButton(
              onPressed: null,
              child: const Text('選択'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _profileDetail() {
    final List<String> _titleList = [
      'ユーザ名',
      'ハンドルネーム',
      'Twitter アカウント',
      'Github アカウント',
      '技術スタック'
    ];
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: _titleList
            .map(
              (element) => TextFormField(
                decoration: InputDecoration(
                  labelText: element,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
