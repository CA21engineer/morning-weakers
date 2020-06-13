import 'package:flutter/material.dart';
import 'package:morning_weakers/infrastructure/firebase_auth_service.dart';
import 'package:morning_weakers/pages/all/all_page.dart';
import 'package:provider/provider.dart';

class LogoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ログアウト'),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        Builder(builder: (context) {
          return FlatButton(
              child: const Text('Sign out Google'),
              color: Theme.of(context).primaryColor,
              onPressed: () {
                context.read<FirebaseAuthService>().signOut().whenComplete(() =>
                    // Debug用
                    Navigator.push<void>(context, MaterialPageRoute(builder: (_) => AllPage())));
              });
        }),
      ]),
    );
  }
}
