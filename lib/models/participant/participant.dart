import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:morning_weakers/models/converter/converters.dart';
import 'package:morning_weakers/models/models.dart';

part 'participant.freezed.dart';

part 'participant.g.dart';

// TODO: idを@requiredにする
@freezed
abstract class Participant with _$Participant {
  const factory Participant({
    String id,
    @required @UserConverter() User user,
    @JsonKey(name: 'desired_occupations') @TechnicalStackConverter() List<TechnicalStack> desiredOccupations,
    @JsonKey(name: 'working_days') int workingDays,
    String note,
    @required @JsonKey(name: 'is_admin') bool isAdmin,
  }) = _Participant;

  factory Participant.fromJson(Map<String, dynamic> json) => _$ParticipantFromJson(json);
}

extension ParticipantsExtension on List<Participant> {
  List<Group> setEditedGroups() {
    final List<User> serverUsers = List<User>.from(map((e) => e.user).where((element) => element.technicalStacks[0].stack == Stack.Serverside));
    final List<User> iosUsers = List<User>.from(map((e) => e.user).where((element) => element.technicalStacks[0].stack == Stack.iOS));
    final List<User> androidUsers = List<User>.from(map((e) => e.user).where((element) => element.technicalStacks[0].stack == Stack.Android));
    final List<User> webUsers = List<User>.from(map((e) => e.user).where((element) => element.technicalStacks[0].stack == Stack.Web));
    final List<User> unityUsers = List<User>.from(map((e) => e.user).where((element) => element.technicalStacks[0].stack == Stack.Unity));

    final int serverCount = serverUsers.length;
    final int iosCount = iosUsers.length;
    final int androidCount = androidUsers.length;
    final int webCount = webUsers.length;
    final int unityCount = unityUsers.length;

    final int clientMinimumCount = [iosCount, androidCount, webCount, unityCount].reduce((previous, next) => previous < next ? previous : next);
    final List<Group> iosGroups = [], androidGroups = [], webGroups = [], unityGroups = [];
    final List<String> adverbs = ['最高の', 'エレクトリカル', 'ファンタスティック', 'アンニュイな', 'メンヘラ', 'テクニカル', 'オンライン', '毎晩徹夜の', '毎日オールの', '1000年に一度の'];
    final List<String> nouns = ['神プログラマー集団', 'パレード', 'ジャイアンツ', '仲間たち', '愉快な仲間たち', 'テックリード集団'];

    /// iOS
    final int iosTeamCount = iosCount ~/ clientMinimumCount;
    final int iosExetraCount = iosCount % clientMinimumCount;
    final List<int> iosTeamCountList = List<int>.filled(iosTeamCount, clientMinimumCount);

    int iosTempIndex = 0;
    for (int i = 0; i < iosExetraCount; i++) {
      iosTempIndex = i < iosTeamCountList.length ? i : i - iosTeamCountList.length;
      iosTeamCountList[iosTempIndex] += 1;
    }

    for (int i = 0; i < iosTeamCountList.length; i++) {
      final List<Participant> participants = [];
      for (int j = 0; j < iosTeamCountList[i]; j++) {
        participants.add(Participant(id: '', user: iosUsers.first, desiredOccupations: [], workingDays: 0, note: '', isAdmin: false));
        iosUsers.removeAt(0);
      }
      iosGroups.add(Group(id: '', groupName: (adverbs..shuffle()).first + (nouns..shuffle()).first, githubUrl: '', slideUrl: '', otherUrls: [], iconUrl: '', participants: participants));
    }

    /// Android
    final int androidTeamCount = androidCount ~/ clientMinimumCount;
    final int androidExetraCount = androidCount % clientMinimumCount;
    final List<int> androidTeamCountList = List<int>.filled(androidTeamCount, clientMinimumCount);

    int androidTempIndex = 0;
    for (int i = 0; i < androidExetraCount; i++) {
      androidTempIndex = i < androidTeamCountList.length ? i : i - androidTeamCountList.length;
      androidTeamCountList[androidTempIndex] += 1;
    }

    for (int i = 0; i < androidTeamCountList.length; i++) {
      final List<Participant> participants = [];
      for (int j = 0; j < androidTeamCountList[i]; j++) {
        participants.add(Participant(id: '', user: androidUsers.first, desiredOccupations: [], workingDays: 0, note: '', isAdmin: false));
        androidUsers.removeAt(0);
      }
      androidGroups.add(Group(id: '', groupName: (adverbs..shuffle()).first + (nouns..shuffle()).first, githubUrl: '', slideUrl: '', otherUrls: [], iconUrl: '', participants: participants));
    }

    /// Web
    final int webTeamCount = webCount ~/ clientMinimumCount;
    final int webExetraCount = iosCount % clientMinimumCount;
    final List<int> webTeamCountList = List<int>.filled(webTeamCount, clientMinimumCount);

    int webTempIndex = 0;
    for (int i = 0; i < webExetraCount; i++) {
      webTempIndex = i < webTeamCountList.length ? i : i - webTeamCountList.length;
      webTeamCountList[webTempIndex] += 1;
    }

    for (int i = 0; i < webTeamCountList.length; i++) {
      final List<Participant> participants = [];
      for (int j = 0; j < webTeamCountList[i]; j++) {
        participants.add(Participant(id: '', user: webUsers.first, desiredOccupations: [], workingDays: 0, note: '', isAdmin: false));
        webUsers.removeAt(0);
      }
      webGroups.add(Group(id: '', groupName: (adverbs..shuffle()).first + (nouns..shuffle()).first, githubUrl: '', slideUrl: '', otherUrls: [], iconUrl: '', participants: participants));
    }

    /// Unity
    final int unityTeamCount = unityCount ~/ clientMinimumCount;
    final int unityExetraCount = unityCount % clientMinimumCount;
    final List<int> unityTeamCountList = List<int>.filled(unityTeamCount, clientMinimumCount);

    int unityTempIndex = 0;
    for (int i = 0; i < unityExetraCount; i++) {
      unityTempIndex = i < unityTeamCountList.length ? i : i - unityTeamCountList.length;
      unityTeamCountList[unityTempIndex] += 1;
    }

    for (int i = 0; i < unityTeamCountList.length; i++) {
      final List<Participant> participants = [];
      for (int j = 0; j < unityTeamCountList[i]; j++) {
        participants.add(Participant(id: '', user: unityUsers.first, desiredOccupations: [], workingDays: 0, note: '', isAdmin: false));
        unityUsers.removeAt(0);
      }
      unityGroups.add(Group(id: '', groupName: (adverbs..shuffle()).first + (nouns..shuffle()).first, githubUrl: '', slideUrl: '', otherUrls: [], iconUrl: '', participants: participants));
    }

    /// All
    final List<Group> allGroups = iosGroups + androidGroups + webGroups + unityGroups;

    int allTempIndex = 0;
    for (int i = 0; i < serverCount; i++) {
      allTempIndex = i < allGroups.length ? i : i - allGroups.length;
      allGroups[allTempIndex].participants.add(Participant(id: '', user: serverUsers.first, desiredOccupations: [], workingDays: 0, note: '', isAdmin: false));
      serverUsers.removeAt(0);
    }
    return allGroups;
  }
}
