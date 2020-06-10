import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:morning_weakers/models/models.dart';

part 'hackathon.freezed.dart';

part 'hackathon.g.dart';

@freezed
abstract class Hackathon with _$Hackathon {
  const factory Hackathon({
    @required String id,
    @required String title,
    @required String description,
    @required String theme,
    @required @JsonKey(name: 'icon_url') String iconUrl,
    @required @JsonKey(name: 'slack_url') String slackUrl,
    @required @JsonKey(name: 'presentation_url') String presentationUrl,
    @required @JsonKey(name: 'start_date') DateTime startDate,
    @required @JsonKey(name: 'end_date') DateTime endDate,
    @required int span,
    Questionnaire questionnaire,
    @required List<Participant> participants,
    List<Group> groups,
    List<Notification> notifications,
  }) = _Hackathon;

  factory Hackathon.fromJson(Map<String, dynamic> json) => _$HackathonFromJson(json);
}
