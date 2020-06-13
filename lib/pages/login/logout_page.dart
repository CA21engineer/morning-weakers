import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:morning_weakers/models/models.dart';
import 'package:morning_weakers/infrastructure/firebase_auth_service.dart';
import 'package:morning_weakers/pages/all/all_page.dart';

class LogoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ログアウト'),
      ),
      body: StateNotifierProvider<FirebaseAuthService, AuthState>(
        create: (_) => FirebaseAuthService(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: const Text('Sign out Google'),
              color: Theme.of(context).primaryColor,
              onPressed: () {
                FirebaseAuthService().signOut().then((user) {
                  // Debug用
                  Navigator.push<void>(context, MaterialPageRoute(builder: (_) =>
                    const AllPage()
                  ));
                });
              }
            ),
          ]
        ),
      ),
    );
  }
}
