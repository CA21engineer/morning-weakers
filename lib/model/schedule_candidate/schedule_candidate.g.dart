// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_candidate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ScheduleCandidate _$_$_ScheduleCandidateFromJson(Map<String, dynamic> json) {
  return _$_ScheduleCandidate(
    id: json['id'] as String,
    start:
        json['start'] == null ? null : DateTime.parse(json['start'] as String),
    end: json['end'] == null ? null : DateTime.parse(json['end'] as String),
  );
}

Map<String, dynamic> _$_$_ScheduleCandidateToJson(
        _$_ScheduleCandidate instance) =>
    <String, dynamic>{
      'id': instance.id,
      'start': instance.start?.toIso8601String(),
      'end': instance.end?.toIso8601String(),
    };
