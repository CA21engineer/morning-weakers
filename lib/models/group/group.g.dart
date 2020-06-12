// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Group _$_$_GroupFromJson(Map<String, dynamic> json) {
  return _$_Group(
    id: json['id'] as String,
    groupName: json['group_name'] as String,
    githubUrl: json['github_url'] as String,
    slideUrl: (json['slide_url'] as List)?.map((e) => e as String)?.toList(),
    otherUrls: (json['other_urls'] as List)
        ?.map((e) => const LinkConverter().fromJson(e as Map<String, dynamic>))
        ?.toList(),
    iconUrl: json['icon_url'] as String,
    participants: (json['participants'] as List)
        ?.map((e) =>
            const ParticipantConverter().fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_GroupToJson(_$_Group instance) => <String, dynamic>{
      'id': instance.id,
      'group_name': instance.groupName,
      'github_url': instance.githubUrl,
      'slide_url': instance.slideUrl,
      'other_urls':
          instance.otherUrls?.map(const LinkConverter().toJson)?.toList(),
      'icon_url': instance.iconUrl,
      'participants': instance.participants
          ?.map(const ParticipantConverter().toJson)
          ?.toList(),
    };
