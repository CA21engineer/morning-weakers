import 'package:morning_weakers/models/models.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService extends StateNotifier<AuthState> with LocatorMixin {
  FirebaseAuthService() : super(const AuthState());

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

      final FirebaseUser user = (await _auth.signInWithCredential(credential)).user;
      state = state.copyWith(
        isLogin: true,
        displayName: user.displayName,
        iconUrl: user.photoUrl
      );
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
      state = state.copyWith(isLogin: false);
    }
      on Exception catch (error) {
      print(error);
    }
  }
}
