import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:morning_weakers/infrastructure/firebase_auth_service.dart';
import 'package:morning_weakers/models/models.dart';
import 'package:state_notifier/state_notifier.dart';

class UserRepository {
  UserRepository(this.authService);

  final FirebaseAuthService authService;
  final Firestore _firestore = Firestore.instance;

  Future<void> createUser(User user) async {
    final String uid = authService.uid.value;
    await _firestore.collection('users').document(uid).setData(user.toJson()..remove('id'));
  }

  Future<void> updateUser(User user) async {
    final String uid = authService.uid.value;
    await _firestore.collection('users').document(uid).setData(user.toJson()..remove('id'));
  }

  Future<User> getMyInfo() async {
    final String uid = authService.uid.value;
    final snapshot = await _firestore.collection('users').document(uid).get();
    return User.fromJson(snapshot.data);
  }
}
