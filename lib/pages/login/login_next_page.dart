import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:morning_weakers/pages/all/all_page.dart';

// TODO: StateNotifierを使ってリファクタ
// TODO: その後、GitHub Loginを追加
class LoginNextPage extends StatefulWidget {
  FirebaseUser userData;

  LoginNextPage({Key key, this.userData}) : super(key: key);

  @override
  _NextPageState createState() => _NextPageState(userData);
}

class _NextPageState extends State<LoginNextPage> {
  FirebaseUser userData;
  String name = '';
  String email;
  String photoUrl;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  _NextPageState(FirebaseUser userData) {
    this.userData = userData;
    this.name = userData.displayName;
    this.email = userData.email;
    this.photoUrl = userData.photoUrl;
  }

  Future<void> _handleSignOut() async {
    await FirebaseAuth.instance.signOut();
    try {
      await _googleSignIn.signOut();
    }
    on Exception catch (error) {
      print(error);
    }
    Navigator.pop(context);
  }

  void _handleToAllPage() {
    Navigator.push<void>(context, MaterialPageRoute(builder: (context) =>
    const AllPage()
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ユーザー情報表示'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(photoUrl),
              Text(name,
                style: const TextStyle(
                  fontSize: 24,
                ),
              ),
              Text(email,
                style: const TextStyle(
                  fontSize: 24,
                ),
              ),
              RaisedButton(
                child: const Text('Sign out Google'),
                onPressed: () {
                  _handleSignOut().catchError(print);
                },
              ),
              RaisedButton(
                child: const Text('to AllPage'),
                onPressed: _handleToAllPage,
              ),
            ]
        ),
      ),
    );
  }
}
