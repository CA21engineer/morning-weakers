import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:morning_weakers/models/models.dart';

class ScheduleCandidateConverter implements JsonConverter<ScheduleCandidate, Map<String, dynamic>> {
  const ScheduleCandidateConverter();

  @override
  ScheduleCandidate fromJson(Map<String, dynamic> json) => ScheduleCandidate.fromJson(json);

  @override
  Map<String, dynamic> toJson(ScheduleCandidate scheduleCandidate) => scheduleCandidate.toJson();
}
