import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:morning_weakers/models/group/group.dart';

// TODO: Firestoreを外部からDIする
// TODO: Firestoreの実装をinfrastractureにまとめる？
class GroupRepository {
  final Firestore _firestore = Firestore.instance;

  Future<List<Group>> getGroups(String hackathonId) async {
    final CollectionReference groupRef = _firestore.collection('hackathons').document(hackathonId).collection('groups');
    final ids = (await groupRef.getDocuments()).documents.map((document) => document.documentID).toList();

    List<Map<String, dynamic>> participantsMap;
    ids.forEach((groupId) {
      groupRef.document(groupId).collection('participants').getDocuments().then((snapshot) {
        participantsMap = snapshot.documents
            .map((documentRef) => documentRef.data..putIfAbsent('id', () => documentRef.documentID))
            .toList();
      });
    });
    return (await groupRef.getDocuments())
        .documents
        .map((document) => Group.fromJson(document.data
          ..putIfAbsent('id', () => document.documentID)
          ..putIfAbsent('participants', () => participantsMap)))
        .toList();
  }

  Future<void> createGroups(String hackathonId, List<Group> groups) async {
    final CollectionReference groupRef = _firestore.collection('hackathons').document(hackathonId).collection('groups');
    final List<DocumentSnapshot> documents = (await groupRef.getDocuments()).documents;
    // 既にGroupがあれば作成しない
    if (documents.isNotEmpty) {
      return Future.value();
    }
    groups.forEach((group) => groupRef.add(group.toJson()..remove('id')..remove('participants')).then((documentRef) {
          group.participants.forEach(
            (participant) => documentRef.collection('participants').add(participant.toJson()..remove('id')),
          );
        }));
  }

  Future<void> deleteGroups(String hackathonId) async {
    // TODO: あとで実装
  }

  Future<void> updateGroups(String hackathonId, List<Group> groups) async {
    // TODO: あとで実装
  }
}
