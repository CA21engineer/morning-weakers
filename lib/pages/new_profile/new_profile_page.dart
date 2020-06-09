import 'package:flutter/material.dart';

class NewProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('プロフィール新規作成'),
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
            RaisedButton(
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
          decoration: InputDecoration(
            labelText: '名前',
          ),
        ),
        TextFormField(
          decoration: InputDecoration(
            labelText: 'ハンドルネーム',
          ),
        ),
        TextFormField(
          decoration: InputDecoration(
            labelText: 'twitter アカウント',
          ),
        ),
        TextFormField(
          decoration: InputDecoration(
            labelText: 'github アカウント',
          ),
        ),
        TextFormField(
          decoration: InputDecoration(
            labelText: '得意技術',
          ),
        ),
      ],
    );
  }
}
