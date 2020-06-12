import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:morning_weakers/models/models.dart';

part 'user.freezed.dart';

part 'user.g.dart';

@freezed
abstract class User with _$User {
  const factory User({
    @required String id,
    @Default('') @JsonKey(name: 'full_name') String fullName,
    @Default('') @JsonKey(name: 'display_name') String displayName,
    @JsonKey(name: 'technical_stack') List<TechnicalStack> technicalStacks,
    @Default('') @JsonKey(name: 'github_account') String githubAccount,
    @Default('') @JsonKey(name: 'twitter_account') String twitterAccount,
    @Default('') @JsonKey(name: 'icon_url') String iconUrl,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

extension UsersExtension on List<User> {
  List<Group> setEditedGroups() {
    final List<User> serverUsers = where((element) => element.technicalStacks[0].stack == Stack.Serverside) as List<User>;
    final List<User> iosUsers = where((element) => element.technicalStacks[0].stack == Stack.iOS) as List<User>;
    final List<User> androidUsers = where((element) => element.technicalStacks[0].stack == Stack.Android) as List<User>;
    final List<User> webUsers = where((element) => element.technicalStacks[0].stack == Stack.Web) as List<User>;
    final List<User> unityUsers = where((element) => element.technicalStacks[0].stack == Stack.Unity) as List<User>;

    final int serverCount = serverUsers.length;
    final int iosCount = iosUsers.length;
    final int androidCount = androidUsers.length;
    final int webCount = webUsers.length;
    final int unityCount = unityUsers.length;

    final int clientMinimumCount = [iosCount, androidCount, webCount, unityCount].reduce((previous, next) => previous < next ? previous : next);

    /// iOS
    final int iosOneTeamCount = iosCount ~/ clientMinimumCount;
    final int iosExetraCount = iosCount % clientMinimumCount;
    final List<int> iosTeamCountList = List<int>.filled(clientMinimumCount, iosOneTeamCount);

    for (int i = 0; i < iosExetraCount; i++) {
      iosTeamCountList[i] += 1;
    } // [3, 4]

    final List<Group> iosGroups = [];

    for (int i = 0; i < iosTeamCountList.length; i++) {
      final List<Participant> participants = [];
      for (int j = 0; j < iosTeamCountList[i]; j++) {
        participants.add(Participant(id: '', user: iosUsers.first, desiredOccupations: [], workingDays: 0, note: '', isAdmin: false));
        iosUsers.removeAt(0);
      }
      iosGroups.add(Group(id: '', groupName: '', githubUrl: '', slideUrls: [], otherUrls: [], iconUrls: [], participants: participants));
    }

    /// Android
    final int androidOneTeamCount = androidCount ~/ clientMinimumCount;
    final int androidExetraCount = iosCount % clientMinimumCount;
    final List<int> androidTeamCountList = List<int>.filled(clientMinimumCount, androidOneTeamCount);

    for (int i = 0; i < androidExetraCount; i++) {
      androidTeamCountList[i] += 1;
    } // [3, 4]

    final List<Group> androidGroups = [];

    for (int i = 0; i < androidTeamCountList.length; i++) {
      final List<Participant> participants = [];
      for (int j = 0; j < androidTeamCountList[i]; j++) {
        participants.add(Participant(id: '', user: androidUsers.first, desiredOccupations: [], workingDays: 0, note: '', isAdmin: false));
        androidUsers.removeAt(0);
      }
      androidGroups.add(Group(id: '', groupName: '', githubUrl: '', slideUrls: [], otherUrls: [], iconUrls: [], participants: participants));
    }

    /// Web
    final int webOneTeamCount = webCount ~/ clientMinimumCount;
    final int webExetraCount = iosCount % clientMinimumCount;
    final List<int> webTeamCountList = List<int>.filled(clientMinimumCount, webOneTeamCount);

    for (int i = 0; i < webExetraCount; i++) {
      webTeamCountList[i] += 1;
    } // [3, 4]

    final List<Group> webGroups = [];

    for (int i = 0; i < webTeamCountList.length; i++) {
      final List<Participant> participants = [];
      for (int j = 0; j < webTeamCountList[i]; j++) {
        participants.add(Participant(id: '', user: webUsers.first, desiredOccupations: [], workingDays: 0, note: '', isAdmin: false));
        webUsers.removeAt(0);
      }
      webGroups.add(Group(id: '', groupName: '', githubUrl: '', slideUrls: [], otherUrls: [], iconUrls: [], participants: participants));
    }

    /// Unity
    final int unityOneTeamCount = unityCount ~/ clientMinimumCount;
    final int unityExetraCount = iosCount % clientMinimumCount;
    final List<int> unityTeamCountList = List<int>.filled(clientMinimumCount, unityOneTeamCount);

    for (int i = 0; i < unityExetraCount; i++) {
      unityTeamCountList[i] += 1;
    } // [3, 4]

    final List<Group> unityGroups = [];

    for (int i = 0; i < unityTeamCountList.length; i++) {
      final List<Participant> participants = [];
      for (int j = 0; j < unityTeamCountList[i]; j++) {
        participants.add(Participant(id: '', user: unityUsers.first, desiredOccupations: [], workingDays: 0, note: '', isAdmin: false));
        unityUsers.removeAt(0);
      }
      unityGroups.add(Group(id: '', groupName: '', githubUrl: '', slideUrls: [], otherUrls: [], iconUrls: [], participants: participants));
    }

    /// All
    final int allTeamCount = iosGroups.length + androidGroups.length + webGroups.length + unityGroups.length;
    final List<Group> allGroups = iosGroups + androidGroups + webGroups + unityGroups;

    int tempIndex = 0;
    for (int i = 0; i < serverCount; i++) {
      tempIndex = i >= allTeamCount ? i : i - serverCount;
      allGroups[tempIndex].participants.add(Participant(id: '', user: serverUsers.first, desiredOccupations: [], workingDays: 0, note: '', isAdmin: false));
      serverUsers.removeAt(0);
    }
    return allGroups;
  }
}
