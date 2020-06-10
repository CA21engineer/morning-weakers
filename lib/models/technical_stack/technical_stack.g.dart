// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'technical_stack.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TechnicalStack _$_$_TechnicalStackFromJson(Map<String, dynamic> json) {
  return _$_TechnicalStack(
    id: json['id'] as String,
    stack: json['stack'],
    language: json['language'] as List,
    proficiency: json['proficiency'],
    priority: json['priority'] as int,
  );
}

Map<String, dynamic> _$_$_TechnicalStackToJson(_$_TechnicalStack instance) =>
    <String, dynamic>{
      'id': instance.id,
      'stack': instance.stack,
      'language': instance.language,
      'proficiency': instance.proficiency,
      'priority': instance.priority,
    };
