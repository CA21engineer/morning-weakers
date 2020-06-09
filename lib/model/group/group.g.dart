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
    sideUrl: (json['side_url'] as List)?.map((e) => e as String)?.toList(),
    otherUrls: (json['other_urls'] as List)?.map((e) => e as String)?.toList(),
    iconUrl: (json['icon_url'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$_$_GroupToJson(_$_Group instance) => <String, dynamic>{
      'id': instance.id,
      'group_name': instance.groupName,
      'github_url': instance.githubUrl,
      'side_url': instance.sideUrl,
      'other_urls': instance.otherUrls,
      'icon_url': instance.iconUrl,
    };
