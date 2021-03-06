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
    slackUrl: json['slack_url'] as String,
    presentationUrl: json['presentation_url'] as String,
    startDate: json['start_date'] == null
        ? null
        : DateTime.parse(json['start_date'] as String),
    endDate: json['end_date'] == null
        ? null
        : DateTime.parse(json['end_date'] as String),
    span: json['span'] as int,
    questionnaire: const QuestionnaireConverter()
        .fromJson(json['questionnaire'] as Map<String, dynamic>),
    participants: (json['participants'] as List)
        ?.map((e) =>
            const ParticipantConverter().fromJson(e as Map<String, dynamic>))
        ?.toList(),
    groups: (json['groups'] as List)
        ?.map((e) => const GroupConverter().fromJson(e as Map<String, dynamic>))
        ?.toList(),
    notifications: (json['notifications'] as List)
        ?.map((e) =>
            const NotificationConverter().fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_HackathonToJson(_$_Hackathon instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'theme': instance.theme,
      'icon_url': instance.iconUrl,
      'slack_url': instance.slackUrl,
      'presentation_url': instance.presentationUrl,
      'start_date': instance.startDate?.toIso8601String(),
      'end_date': instance.endDate?.toIso8601String(),
      'span': instance.span,
      'questionnaire':
          const QuestionnaireConverter().toJson(instance.questionnaire),
      'participants': instance.participants
          ?.map(const ParticipantConverter().toJson)
          ?.toList(),
      'groups': instance.groups?.map(const GroupConverter().toJson)?.toList(),
      'notifications': instance.notifications
          ?.map(const NotificationConverter().toJson)
          ?.toList(),
    };
