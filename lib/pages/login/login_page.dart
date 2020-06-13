import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:morning_weakers/models/models.dart';
import 'package:morning_weakers/infrastructure/firebase_auth_service.dart';
import 'package:morning_weakers/pages/new_profile/new_profile_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ログイン'),
      ),
      body: StateNotifierProvider<FirebaseAuthService, AuthState>(
        create: (_) => FirebaseAuthService(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: const Image(
                image: AssetImage('assets/images/btn_google_signin/light/normal.png'),
              ),
              onPressed: () {
                FirebaseAuthService().signIn().then((user) {
                  Navigator.push<void>(context, MaterialPageRoute(builder: (_) => NewProfilePage()
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
