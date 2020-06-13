import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:morning_weakers/models/models.dart';
import 'package:state_notifier/state_notifier.dart';

class UserRepository {
  UserRepository(this.uid);

  final String uid;
  final Firestore _firestore = Firestore.instance;

  Future<void> createUser(User user) async {
    await _firestore.collection('users').document(user.id).setData(user.toJson());
  }

  Future<void> updateUser(User user) async {
    await _firestore.collection('users').document(user.id).setData(user.toJson());
  }

  Future<User> getMyInfo() async {
    final snapshot = await _firestore.collection('users').document(uid).get();
    return User.fromJson(snapshot.data);
  }
}
