import 'dart:async';

import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

// TODO: interface作ってRepositoryにInjectする
class FirebaseAuthService {
  FirebaseAuthService() {
    FirebaseAuth.instance.currentUser().then((user) {
      if (user != null) {
        _loginController.add(true);
        _idController.add(user.uid);
      } else {
        _loginController.add(false);
      }
    });
  }

  final BehaviorSubject<bool> _loginController = BehaviorSubject();
  ValueStream<bool> get isLogin => _loginController.stream;

  final BehaviorSubject<String> _idController = BehaviorSubject();
  ValueStream<String> get uid => _idController.stream;

  //TODO:他のiconたちはmodel作って返す
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> signIn() async {
    GoogleSignInAccount googleCurrentUser = _googleSignIn.currentUser;
    //Silentlyは前回のログイン情報でログインできる場合にダイアログ無しで自動ログインを試みる
    googleCurrentUser ??= await _googleSignIn.signInSilently();
    //googleSignIn.singIn();でサインインダイアログが出る。
    googleCurrentUser ??= await _googleSignIn.signIn();
    if (googleCurrentUser == null) {
      return;
    }
    final GoogleSignInAuthentication googleAuth = await googleCurrentUser.authentication;
    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    final FirebaseUser user = (await _auth.signInWithCredential(credential)).user;
    _loginController.sink.add(true);
    _idController.sink.add(user.uid);
  }

  // TODO: あとで
  void getAuthInfo() async {}

  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
    await _googleSignIn.signOut();
    _loginController.sink.add(false);
    _idController.sink.add(null);
  }

  void dispose() {
    _loginController.close();
    _idController.close();
  }
}
