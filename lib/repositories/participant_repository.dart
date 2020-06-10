import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:morning_weakers/models/models.dart';

class ParticipantRepository {
  final Firestore _firestore = Firestore.instance;

  Future<List<Participant>> getParticipants(String hackathonId) async {
    final List<DocumentSnapshot> documents =
        (await _firestore.collection('hackathons/v1').document(hackathonId).collection('participants').getDocuments())
            .documents;
    return Future.value(documents.map((snapshot) => Participant.fromJson(snapshot.data)).toList());
  }
}
