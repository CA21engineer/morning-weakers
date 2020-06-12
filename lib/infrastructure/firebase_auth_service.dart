import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:firebase_auth/firebase_auth.dart';

@immutable
class AuthState {
  AuthState({
    this.isLogin = false
  });
  final bool isLogin;
}

class FirebaseAuthService extends StateNotifier<AuthState> with LocatorMixin {
  FirebaseAuthService() : super(AuthState());

  FirebaseUser user;

  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> signIn() async {
    GoogleSignInAccount googleCurrentUser = _googleSignIn.currentUser;
    try{
      googleCurrentUser ??= await _googleSignIn.signInSilently();
      googleCurrentUser ??= await _googleSignIn.signIn();
      if (googleCurrentUser == null) {
        return;
      }
      final GoogleSignInAuthentication googleAuth = await googleCurrentUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.getCredential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      // TODO: ログイン後、userModelに値を入れる
      state = AuthState(
        isLogin: true,
      );
      final FirebaseUser user = (await _auth.signInWithCredential(credential)).user;
      print('signed in ${user.displayName}');

      return user;
    }
    on Exception catch(error) {
      print(error);
      return;
    }
  }

  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
    try {
      await _googleSignIn.signOut();
      state = AuthState(
        isLogin: false,
      );
    }
      on Exception catch (error) {
      print(error);
    }
  }
}
