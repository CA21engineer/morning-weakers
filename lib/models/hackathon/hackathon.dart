import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:morning_weakers/models/converter/converters.dart';
import 'package:morning_weakers/models/models.dart';

part 'hackathon.freezed.dart';

part 'hackathon.g.dart';

// TODO: idを@requiredにする
@freezed
abstract class Hackathon with _$Hackathon {
  const factory Hackathon({
    String id,
    @required String title,
    @required String description,
    @required String theme,
    @JsonKey(name: 'icon_url') String iconUrl,
    @JsonKey(name: 'slack_url') String slackUrl,
    @JsonKey(name: 'presentation_url') String presentationUrl,
    @required @JsonKey(name: 'start_date') DateTime startDate,
    @required @JsonKey(name: 'end_date') DateTime endDate,
    @required int span,
    @QuestionnaireConverter() Questionnaire questionnaire,
    @required @ParticipantConverter() List<Participant> participants,
    @GroupConverter() List<Group> groups,
    @NotificationConverter() List<Notification> notifications,
  }) = _Hackathon;

  factory Hackathon.fromJson(Map<String, dynamic> json) => _$HackathonFromJson(json);
}
