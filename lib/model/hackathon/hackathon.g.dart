// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hackathon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Hackathon _$_$_HackathonFromJson(Map<String, dynamic> json) {
  return _$_Hackathon(
    id: json['id'] as String,
    title: json['title'] as String,
    description: json['description'] as String,
    theme: json['theme'] as String,
    iconUrl: json['icon_url'] as String,
    slackUrl: json['slackUrl'] as String,
    presentationUrl: json['presentationUrl'] as String,
    startDate: json['startDate'] == null
        ? null
        : DateTime.parse(json['startDate'] as String),
    endDate: json['endDate'] == null
        ? null
        : DateTime.parse(json['endDate'] as String),
    participantCount: json['participantCount'] as int,
  );
}

Map<String, dynamic> _$_$_HackathonToJson(_$_Hackathon instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'theme': instance.theme,
      'icon_url': instance.iconUrl,
      'slackUrl': instance.slackUrl,
      'presentationUrl': instance.presentationUrl,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'participantCount': instance.participantCount,
    };
