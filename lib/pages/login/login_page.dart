import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:morning_weakers/pages/login/login_next_page.dart';

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
    if (user == null) {
      return;
    }

    Navigator.push<void>(context, MaterialPageRoute(builder: (context) =>
        LoginNextPage(userData: user)
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
                onPressed: () =>
                  _handleSignIn().then(transitionNextPage)
                    .catchError(print),
              ),
            ]
        ),
      ),
    );
  }
}
