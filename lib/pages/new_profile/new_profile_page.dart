import 'package:flutter/material.dart';

class NewProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('プロフィール新規作成'),
      ),
      body: SafeArea(
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
    );
  }

  Widget _profileIcon() {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(50.0),
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
    return Column(
      children: <Widget>[
        TextFormField(
          decoration: const InputDecoration(
            labelText: '名前',
          ),
        ),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'ハンドルネーム',
          ),
        ),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'twitter アカウント',
          ),
        ),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'github アカウント',
          ),
        ),
        TextFormField(
          decoration: const InputDecoration(
            labelText: '得意技術',
          ),
        ),
      ],
    );
  }
}
