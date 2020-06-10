import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:morning_weakers/core/dummy_data.dart';
import 'package:morning_weakers/models/models.dart';

class HackathonRepository {
  final Firestore _firestore = Firestore.instance;

  /// ハッカソンの新規作成
  Future<Hackathon> createHackathon(Hackathon hackathon) async {
    final DocumentReference ref = _firestore.collection('hackathons/v1').document();
    final Hackathon result = hackathon.copyWith(id: ref.documentID);
    await ref.setData(result.toJson());
    return Future.value(result);
  }

  /// ハッカソンの単体取得
  Future<Hackathon> getHackathon(String hackathonId) async {
    final DocumentReference ref = _firestore.collection('hackathons/v1').document(hackathonId);
    // TODO: Exceptionを別クラスにまとめる
    if (ref.get() == null) {
      throw Exception('指定されたハッカソンは存在しません');
    }
    return ref.get().then((value) => Hackathon.fromJson(value.data));
  }

  /// Drawerに表示するハッカソンアイコン一覧とidの取得
  // if user is not belong to Hackathon, return null
  Future<Joined> getMyJoined() async {
    // TODO: userIdはAuthができたら変更
    final DocumentReference joinedRef = _firestore.collection('joined/v1').document('userId');
    return joinedRef.get().then((value) => Joined.fromJson(value.data));
  }

  /// ハッカソンに参加
  // TODO: authができたらUserはauthから取得する
  Future<void> joinHackathon(
    Hackathon hackathon,
    List<TechnicalStack> desiredOccupations,
    int workingDays,
    String note,
  ) async {
    // hackathon documentに参加者を追加
    final DocumentReference hackathonRef = _firestore.collection('hackathons/v1').document(hackathon.id);

    final Participant participant = Participant(
      id: hackathonRef.collection('participants').document().documentID,
      user: dummyUser(),
      desiredOccupations: desiredOccupations,
      workingDays: workingDays,
      note: note,
      isAdmin: false,
    );

    await hackathonRef.setData(
      <String, dynamic>{'participants': hackathon.copyWith(participants: hackathon.participants..add(participant))},
    );

    // Joined documentに新しいhackathonを追加
    final CollectionReference joinedRef = _firestore.collection('joined/v1');
    joinedRef.where('user_id', isEqualTo: participant.user.id).snapshots().listen((event) {
      if (event.documents.isEmpty) {
        joinedRef.add(<String, dynamic>{
          'user_id': participant.user.id,
          'hackathon_ids': [hackathon.id],
          'hackathon_icon_urls': [hackathon.iconUrl],
        });
      } else {
        event.documents.forEach((doc) {
          final String id = doc.documentID;
          final List<String> hackathonIds = doc['hackathon_id'] as List<String>;
          _firestore
              .collection('joined/v1')
              .document(id)
              .setData(<String, dynamic>{'hackathon_id': hackathonIds..add(hackathon.id)});
        });
      }
    });
  }
}
