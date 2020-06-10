import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:morning_weakers/models/models.dart';

part 'questionnaire.freezed.dart';

part 'questionnaire.g.dart';

@freezed
abstract class Questionnaire with _$Questionnaire {
  const factory Questionnaire({
    @required String id,
    @required String title,
    @required String description,
    @required @JsonKey(name: 'schedule_candidate') List<ScheduleCandidate> scheduleCandidates,
    @required @JsonKey(name: 'desired_occupation') List<TechnicalStack> desiredOccupations,
    @required @JsonKey(name: 'working_days') int workingDays,
    @required String note,
  }) = _Questionnaire;

  factory Questionnaire.fromJson(Map<String, dynamic> json) => _$QuestionnaireFromJson(json);
}
