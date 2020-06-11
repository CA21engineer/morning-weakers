import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:morning_weakers/pages/all/all_page.dart';

// TODO: StateNotifierを使ってリファクタ
// TODO: その後、GitHub Loginを追加
class LoginPage extends StatefulWidget {
  const LoginPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<LoginPage> {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<FirebaseUser> _handleSignIn() async {
    GoogleSignInAccount googleCurrentUser = _googleSignIn.currentUser;
    try {
      googleCurrentUser ??= await _googleSignIn.signInSilently();
      googleCurrentUser ??= await _googleSignIn.signIn();
      if (googleCurrentUser == null) {
        return null;
      }

      final GoogleSignInAuthentication googleAuth = await googleCurrentUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.getCredential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      final FirebaseUser user = (await _auth.signInWithCredential(credential)).user;
      print('signed in ${user.displayName}');

      return user;
    }
    on Exception catch (error) {
      print(error);
      return null;
    }
  }

  void transitionNextPage(FirebaseUser user) {
    if (user == null) return;

    Navigator.push(context, MaterialPageRoute(builder: (context) =>
        NextPage(userData: user)
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ログイン'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: const Image(
                  image: AssetImage('assets/images/btn_google_signin/light/normal.png'),
                ),
                onPressed: () {
                  _handleSignIn()
                    .then((FirebaseUser user) =>
                      transitionNextPage(user)
                    )
                    .catchError((error) => print(error));
                },
              ),
            ]
        ),
      ),
    );
  }
}

class NextPage extends StatefulWidget {
  FirebaseUser userData;

  NextPage({Key key, this.userData}) : super(key: key);

  @override
  _NextPageState createState() => _NextPageState(userData);
}

class _NextPageState extends State<NextPage> {
  FirebaseUser userData;
  String name = "";
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

  void _handletoAllPage(FirebaseUser user) {
  if (user == null) return;

    Navigator.push(context, MaterialPageRoute(builder: (context) =>
        AllPage(userData: user)
    ));
//    Navigator.pop(context);
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
                _handleSignOut().catchError((error) => print(error));
              },
            ),
            RaisedButton(
              child: const Text('to AllPage'),
              onPressed: () {
                _handletoAllPage(userData);
              },
            ),
          ]
        ),
      ),
    );
  }
}
