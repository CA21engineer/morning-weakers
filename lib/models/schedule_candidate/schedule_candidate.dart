import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_candidate.freezed.dart';

part 'schedule_candidate.g.dart';

@freezed
abstract class ScheduleCandidate with _$ScheduleCandidate {
  const factory ScheduleCandidate({
    @required String id,
    @required DateTime start,
    @required DateTime end,
  }) = _ScheduleCandidate;

  factory ScheduleCandidate.fromJson(Map<String, dynamic> json) => _$ScheduleCandidateFromJson(json);
}
