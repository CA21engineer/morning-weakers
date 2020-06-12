import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:morning_weakers/models/models.dart';

class QuestionnaireRepository {
  final Firestore _firestore = Firestore.instance;

  Future<void> createQuestionnaire(String hackathonId, Questionnaire questionnaire) async {
    final DocumentReference hackRef = _firestore.collection('hackathons').document(hackathonId);
    // TODO: Firestoreに移行する
    final Hackathon hackathon = Hackathon.fromJson((await hackRef.get()).data);
    // TODO: 既に作成していたらメッセージ出す？そもそも導線最初しかなさそう
    if (hackathon.questionnaire == null) {
      await hackRef.updateData(questionnaire.toJson());
    }
  }

  Future<void> updateQuestionnaire(String hackathonId, Questionnaire questionnaire) async {
    // TODO: あとで実装する
  }
}
