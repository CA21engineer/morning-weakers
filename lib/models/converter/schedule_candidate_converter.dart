import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:morning_weakers/models/models.dart';

class ScheduleCandidateConverter implements JsonConverter<ScheduleCandidate, Map<String, dynamic>> {
  const ScheduleCandidateConverter();

  @override
  ScheduleCandidate fromJson(Map<String, dynamic> json) {
    if (json != null) {
      return ScheduleCandidate.fromJson(json);
    } else {
      return null;
    }
  }

  @override
  Map<String, dynamic> toJson(ScheduleCandidate scheduleCandidate) => scheduleCandidate?.toJson();
}
