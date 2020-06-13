import 'package:morning_weakers/infrastructure/firebase_auth_service.dart';
import 'package:morning_weakers/repositories/auth_repository/auth_repository_state.dart';
import 'package:state_notifier/state_notifier.dart';

class AuthRepository extends StateNotifier<AuthRepositoryState> with LocatorMixin{
  AuthRepository() : super(const AuthRepositoryState());

  FirebaseAuthService get authService => read<FirebaseAuthService>();


  Future<void> signIn(){
    authService.signIn();
    // TODO: signinが成功したら

  }

}