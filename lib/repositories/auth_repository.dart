import 'package:morning_weakers/infrastructure/firebase_auth_service.dart';
import 'package:morning_weakers/repositories/model/user_base_info.dart';
import 'package:rxdart/rxdart.dart';

// TODO: BaseControllerを作り、各画面でisLoginをlistenし、falseになればlogin画面へ飛ばす
class AuthRepository {
  AuthRepository(this.authService) {
    authService.isLogin.listen(_loginController.add);
  }

  final FirebaseAuthService authService;

  final BehaviorSubject<bool> _loginController = BehaviorSubject();
  ValueStream<bool> get isLogin => _loginController.stream;

  Future<void> signIn() async {
    await authService.signIn();
  }

  Future<void> signUp() async {
    await authService.signOut();
  }

  Future<UserBaseInfo> getUserBaseInfo() async => authService.getUserBaseInfo();

  void dispose() {
    _loginController.close();
  }
}
