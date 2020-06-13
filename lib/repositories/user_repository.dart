import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:morning_weakers/models/models.dart';

class UserRepository {
  final Firestore _firestore = Firestore.instance;

  Future<void> createUser(User user) async {
    await _firestore.collection('users').document(user.id).setData(user.toJson());
  }

  Future<void> updateUser(User user) async {
    await _firestore.collection('users').document(user.id).setData(user.toJson());
  }
}
