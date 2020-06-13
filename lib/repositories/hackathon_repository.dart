import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:morning_weakers/core/dummy_data.dart';
import 'package:morning_weakers/models/models.dart';

class HackathonRepository {
  final Firestore _firestore = Firestore.instance;
  String _currentHackathonId;
  String get currentHackathonId => _currentHackathonId;

  /// ハッカソンの新規作成
  Future<void> createHackathon(Hackathon hackathon) async {
    final DocumentReference hackRef = _firestore.collection('hackathons').document();
    final Map<String, dynamic> hackMap = hackathon.copyWith(id: hackRef.documentID).toJson()
      ..remove('participants')
      ..remove('groups')
      ..remove('questionnaire')
      ..remove('notifications');
    debugPrint(hackMap.toString());
    await hackRef.setData(hackMap).whenComplete(() {
      // participantsのSubCollectionに代入
      final CollectionReference participantsRef = hackRef.collection('participants');
      hackathon.participants.forEach((participant) async {
        await participantsRef.add(participant.toJson()..remove('id'));
      });
      // TODO: joinする
      _currentHackathonId = hackRef.documentID;
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

    _currentHackathonId = hackathonId;

    return Future.value(Hackathon.fromJson(hackSnapshot.data
      ..putIfAbsent('id', () => hackRef.documentID)
      ..putIfAbsent('participants', () => participants)
      ..putIfAbsent('groups', () => groups)
      ..putIfAbsent('notification', () => notifications)));
  }

  /// Drawerに表示するハッカソンアイコン一覧とidの取得, 所属なしならnullが返る
  Future<Joined> getMyJoined() async {
    // TODO: userIdはAuthができたら変更
    Joined joined;
    _firestore.collection('joined').where('user_id', isEqualTo: 'userId').snapshots().listen((event) {
      if (event.documents.isEmpty) {
        joined = null;
      } else {
        joined = Joined.fromJson(event.documents[0].data);
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

    // TODO: authができたらUserはauthから取得する
    final Participant participant = Participant(
      id: hackathonRef.collection('participants').document().documentID,
      user: dummyUser(),
      desiredOccupations: desiredOccupations,
      workingDays: workingDays,
      note: note,
      isAdmin: false,
    );

    await hackathonRef.setData(
      <String, dynamic>{
        'participants': hackathon.copyWith(participants: hackathon.participants..add(participant)).toJson()
      },
    );

    // Joined documentに新しいhackathonを追加
    final CollectionReference joinedRef = _firestore.collection('joined');
    await joinedRef.where('user_id', isEqualTo: participant.user.id).getDocuments().then((snapshot) {
      if (snapshot.documents.isEmpty) {
        joinedRef.add(<String, dynamic>{
          'user_id': participant.user.id,
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
              .setData(<String, dynamic>{'hackathon_ids': hackathonIds..add(hackathon.id)});
        });
      }
    });
  }
}
