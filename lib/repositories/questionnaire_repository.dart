import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:morning_weakers/models/models.dart';

class QuestionnaireRepository {
  final Firestore _firestore = Firestore.instance;

  Future<void> createQuestionnaire(String hackathonId, Questionnaire questionnaire) async {
    await _firestore
        .collection('hackathons')
        .where('id', isEqualTo: hackathonId)
        .where('questionnaire', isNull: true)
        .getDocuments()
        .then((snapshot) => snapshot.documents.forEach((document) {
              // TODO: 既に作成していたらメッセージ出す？そもそも導線最初しかなさそう
              _firestore
                  .collection('hackathons')
                  .document(document.documentID)
                  .updateData(<String, dynamic>{'questionnaire': questionnaire.toJson()..remove('id')});
            }));
  }

  Future<void> updateQuestionnaire(String hackathonId, Questionnaire questionnaire) async {
    // TODO: あとで実装する
  }
}
