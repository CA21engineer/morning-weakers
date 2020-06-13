import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:morning_weakers/models/models.dart';

class QuestionnaireRepository {
  final Firestore _firestore = Firestore.instance;

  Future<void> createQuestionnaire(String hackathonId, Questionnaire questionnaire) async {
    final DocumentReference hackRef = _firestore.collection('hackathons').document(hackathonId);
    // TODO: Firestoreに移行する
    final participants = (await hackRef.collection('participants').getDocuments()).documents.map((document) {
      if (document.data.isNotEmpty) {
        return document.data..putIfAbsent('id', () => document.documentID);
      } else {
        return <String, dynamic>{};
      }
    }).toList();
    final Hackathon hackathon = Hackathon.fromJson((await hackRef.get()).data
      ..putIfAbsent('id', () => hackathonId)
      ..putIfAbsent('participants', () => participants));
    // TODO: 既に作成していたらメッセージ出す？そもそも導線最初しかなさそう
    if (hackathon.questionnaire == null) {
      await hackRef.updateData(questionnaire.toJson());
    }
  }

  Future<void> updateQuestionnaire(String hackathonId, Questionnaire questionnaire) async {
    // TODO: あとで実装する
  }
}
