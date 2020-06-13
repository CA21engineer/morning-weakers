import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:morning_weakers/models/converter/converters.dart';
import 'package:morning_weakers/models/models.dart';

part 'questionnaire.freezed.dart';

part 'questionnaire.g.dart';

// TODO: idを@requiredにする
@freezed
abstract class Questionnaire with _$Questionnaire {
  const factory Questionnaire({
    String id,
    @required String title,
    @required String description,
    @required @JsonKey(name: 'schedule_candidates') @ScheduleCandidateConverter() List<ScheduleCandidate> scheduleCandidates,
    @required @JsonKey(name: 'desired_occupations') @TechnicalStackConverter() List<TechnicalStack> desiredOccupations,
    @required @JsonKey(name: 'working_days') int workingDays,
    @required String note,
  }) = _Questionnaire;

  factory Questionnaire.fromJson(Map<String, dynamic> json) => _$QuestionnaireFromJson(json);
}
