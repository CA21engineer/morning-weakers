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
    slideUrls: (json['slide_url'] as List)?.map((e) => e as String)?.toList(),
    otherUrls: (json['other_urls'] as List)?.map((e) => e as String)?.toList(),
    iconUrls: (json['icon_url'] as List)?.map((e) => e as String)?.toList(),
    participants: (json['participants'] as List)
        ?.map((e) =>
            e == null ? null : Participant.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_GroupToJson(_$_Group instance) => <String, dynamic>{
      'id': instance.id,
      'group_name': instance.groupName,
      'github_url': instance.githubUrl,
      'slide_url': instance.slideUrls,
      'other_urls': instance.otherUrls,
      'icon_url': instance.iconUrls,
      'participants': instance.participants,
    };
