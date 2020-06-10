import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:morning_weakers/core/dummy_data.dart';
import 'package:morning_weakers/models/models.dart';

class HackathonRepository {
  final Firestore firestore = Firestore.instance;

  Future<void> createHackathon(Hackathon hackathon) async {
    final DocumentReference ref = firestore.collection('hackathon/v1').document();
    // TODO: DummyDataから置き換える
    final Map<String, dynamic> hackathon = dummyHackathon().toJson();
    await ref.setData(hackathon);
  }
}
