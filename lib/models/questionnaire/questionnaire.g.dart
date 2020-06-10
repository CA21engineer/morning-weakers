// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questionnaire.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Questionnaire _$_$_QuestionnaireFromJson(Map<String, dynamic> json) {
  return _$_Questionnaire(
    id: json['id'] as String,
    title: json['title'] as String,
    description: json['description'] as String,
    scheduleCandidates: (json['schedule_candidate'] as List)
        ?.map((e) => e == null
            ? null
            : ScheduleCandidate.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    desiredOccupations: (json['desired_occupation'] as List)
        ?.map((e) => e == null
            ? null
            : TechnicalStack.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    workingDays: json['working_days'] as int,
    note: json['note'] as String,
  );
}

Map<String, dynamic> _$_$_QuestionnaireToJson(_$_Questionnaire instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'schedule_candidate': instance.scheduleCandidates,
      'desired_occupation': instance.desiredOccupations,
      'working_days': instance.workingDays,
      'note': instance.note,
    };
