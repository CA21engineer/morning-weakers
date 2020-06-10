import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:morning_weakers/models/group/group.dart';

class GroupRepository {
  final Firestore _firestore = Firestore.instance;

  Future<List<Group>> getGroup(String hackathonId) async {
    final List<DocumentSnapshot> documents =
        (await _firestore.collection('hackathons/v1').document(hackathonId).collection('groups').getDocuments())
            .documents;
    return Future.value(documents.map((snapshot) => Group.fromJson(snapshot.data)).toList());
  }
}
