import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:morning_weakers/infrastructure/firebase_auth_service.dart';
import 'package:morning_weakers/models/models.dart';
import 'package:shared_preferences/shared_preferences.dart';

// TODO: コンストラクタor init時にSharedPreferencesからhackathonIdを取得して変数に保持したい
class HackathonRepository {
  HackathonRepository(this.authService);

  static const String HACKATHON_ID_KEY = 'hackathonId';
  final FirebaseAuthService authService;
  final Firestore _firestore = Firestore.instance;

  Future<SharedPreferences> prefs = SharedPreferences.getInstance();

  Future<String> currentHackathonId() async {
    return Future.value((await prefs).getString(HACKATHON_ID_KEY));
  }

  /// ハッカソンの新規作成
  Future<void> createHackathon(Hackathon hackathon) async {
    final DocumentReference hackRef = _firestore.collection('hackathons').document();
    final Map<String, dynamic> hackMap = hackathon.copyWith(id: hackRef.documentID).toJson()
      ..remove('participants')
      ..remove('groups')
      ..remove('notifications');
    debugPrint(hackMap.toString());
    await hackRef.setData(hackMap).whenComplete(() async {
      // participantsのSubCollectionに代入
      final CollectionReference participantsRef = hackRef.collection('participants');
      hackathon.participants.forEach((participant) async {
        await participantsRef.add(participant.toJson()..remove('id'));
      });
      // TODO: 作成者も強制的にハッカソンに参加する仕様。あとで話し合う
      await _updateJoined(hackathon.copyWith(id: hackRef.documentID));
      await (await prefs).setString(HACKATHON_ID_KEY, hackRef.documentID);
    });
  }

  /// ハッカソンの単体取得
  Future<Hackathon> getHackathon(String hackathonId) async {
    final DocumentReference hackRef = _firestore.collection('hackathons').document(hackathonId);
    // TODO: Exceptionを別クラスにまとめる
    final hackSnapshot = await hackRef.get();
    if (hackSnapshot == null) {
      throw Exception('指定されたハッカソンは存在しません');
    }

    Future<List<Map<String, dynamic>>> getJsonList(String collectionName) async =>
        (await hackRef.collection(collectionName).getDocuments()).documents.map((document) {
          if (document.data.isNotEmpty) {
            return document.data..putIfAbsent('id', () => document.documentID);
          } else {
            return <String, dynamic>{};
          }
        }).toList();

    // TODO: 並列実行 => fromJsonするやり方を調べる
    final List<Map<String, dynamic>> participants = await getJsonList('participants');
    final List<Map<String, dynamic>> groups = await getJsonList('groups');
    final List<Map<String, dynamic>> notifications = await getJsonList('notifications');

    await (await prefs).setString(HACKATHON_ID_KEY, hackRef.documentID);

    return Future.value(Hackathon.fromJson(hackSnapshot.data
      ..putIfAbsent('id', () => hackRef.documentID)
      ..putIfAbsent('participants', () => participants)
      ..putIfAbsent('groups', () => groups)
      ..putIfAbsent('notifications', () => notifications)));
  }

  /// Drawerに表示するハッカソンアイコン一覧とidの取得, 所属なしならnullが返る
  Future<Joined> getMyJoined() async {
    final uid = authService.uid.value;
    Joined joined;
    await _firestore.collection('joined').where('user_id', isEqualTo: uid).getDocuments().then((snapshot) {
      if (snapshot.documents.isEmpty) {
        joined = null;
      } else {
        joined = Joined.fromJson(snapshot.documents[0].data..putIfAbsent('id', () => snapshot.documents[0].documentID));
      }
    });

    return joined;
  }

  /// ハッカソンに参加
  Future<void> joinHackathon(
    Hackathon hackathon,
    List<TechnicalStack> desiredOccupations,
    int workingDays,
    String note,
  ) async {
    // hackathon documentに参加者を追加
    final DocumentReference hackathonRef = _firestore.collection('hackathons').document(hackathon.id);

    final uid = authService.uid.value;
    final User user =
        User.fromJson((await _firestore.collection('users').document(uid).get()).data..putIfAbsent('id', () => uid));

    final Participant participant = Participant(
      id: hackathonRef.collection('participants').document().documentID,
      user: user,
      desiredOccupations: desiredOccupations,
      workingDays: workingDays,
      note: note,
      isAdmin: false,
    );
    final newParticipants = hackathon.participants..add(participant);
    final participantMap = newParticipants.map((e) => e.toJson()).toList();

    await hackathonRef.updateData(
      <String, dynamic>{'participants': participantMap},
    );

    // Joined documentに新しいhackathonを追加
    await _updateJoined(hackathon);
  }

  Future<void> _updateJoined(Hackathon hackathon) async {
    final uid = authService.uid.value;
    final CollectionReference joinedRef = _firestore.collection('joined');
    await joinedRef.where('user_id', isEqualTo: uid).getDocuments().then((snapshot) {
      if (snapshot.documents.isEmpty) {
        joinedRef.add(<String, dynamic>{
          'user_id': uid,
          'hackathon_ids': [hackathon.id],
          'hackathon_icon_urls': [hackathon.iconUrl],
        });
      } else {
        snapshot.documents.forEach((doc) {
          final String id = doc.documentID;
          final List<String> hackathonIds =
              (doc['hackathon_ids'] as List<dynamic>).map((dynamic e) => e.toString()).toList();
          _firestore
              .collection('joined')
              .document(id)
              .updateData(<String, dynamic>{'hackathon_ids': hackathonIds..add(hackathon.id)});
        });
      }
    });
  }
}
