import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:morning_weakers/models/models.dart';

class ParticipantRepository {
  final Firestore _firestore = Firestore.instance;

  Future<List<Participant>> getParticipants(String hackathonId) async {
    final List<DocumentSnapshot> documents =
        (await _firestore.collection('hackathons').document(hackathonId).collection('participants').getDocuments())
            .documents;
    return Future.value(documents
        .map((snapshot) => Participant.fromJson(snapshot.data..putIfAbsent('id', () => snapshot.documentID)))
        .toList());
  }

  Future<bool> isAdmin(String hackathonId, User user) async {
    // TODO: userをparticipantの埋め込みにせず、useridでクエリできるようにする
    final participantSnapshot = await _firestore
        .collection('hackathons')
        .document(hackathonId)
        .collection('participants')
        .where('user', isEqualTo: user)
        .getDocuments();
    return participantSnapshot.documents.isNotEmpty;
  }
}
