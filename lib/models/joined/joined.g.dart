// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'joined.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Joined _$_$_JoinedFromJson(Map<String, dynamic> json) {
  return _$_Joined(
    id: json['id'] as String,
    userId: json['user_id'] as String,
    hackathonIds:
        (json['hackathon_ids'] as List)?.map((e) => e as String)?.toList(),
    hackathonIconUrls: (json['hackathon_icon_urls'] as List)
        ?.map((e) => e as String)
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_JoinedToJson(_$_Joined instance) => <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'hackathon_ids': instance.hackathonIds,
      'hackathon_icon_urls': instance.hackathonIconUrls,
    };
