import 'package:morning_weakers/models/models.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:firebase_auth/firebase_auth.dart';

// TODO: interface作ってRepositoryにInjectする
class FirebaseAuthService extends StateNotifier<AuthState> {
  FirebaseAuthService() : super(const AuthState());

  FirebaseUser user;

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
    state = state.copyWith(
      isLogin: true,
      firebaseUserId: user.uid,
      displayName: user.displayName,
      iconUrl: user.photoUrl,
    );
  }

  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
    await _googleSignIn.signOut();
    state = state.copyWith(isLogin: true, firebaseUserId: null, displayName: '', iconUrl: '');
  }
}
