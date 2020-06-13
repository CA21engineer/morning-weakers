import 'package:flutter/material.dart';
import 'package:morning_weakers/pages/new_profile/new_profile_page.dart';
import 'package:morning_weakers/repositories/auth_repository.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ログイン'),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        Builder(builder: (context) {
          return FlatButton(
              child: const Image(
                image: AssetImage('assets/images/btn_google_signin/light/normal.png'),
              ),
              onPressed: () {
                context.read<AuthRepository>().signIn().whenComplete(() =>
                    // debug用
                    Navigator.push<void>(context, MaterialPageRoute(builder: (_) => NewProfilePage())));
              });
            }
          );
        })
      ]),
    );
  }
}
