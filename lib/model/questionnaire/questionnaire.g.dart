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
    workingDays: json['working_days'] as int,
    note: json['note'] as String,
  );
}

Map<String, dynamic> _$_$_QuestionnaireToJson(_$_Questionnaire instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'working_days': instance.workingDays,
      'note': instance.note,
    };