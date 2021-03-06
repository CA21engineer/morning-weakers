// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$_$_UserFromJson(Map<String, dynamic> json) {
  return _$_User(
    id: json['id'] as String,
    fullName: json['full_name'] as String,
    displayName: json['display_name'] as String,
    technicalStacks: (json['technical_stacks'] as List)
        ?.map((e) =>
            const TechnicalStackConverter().fromJson(e as Map<String, dynamic>))
        ?.toList(),
    githubAccount: json['github_account'] as String,
    twitterAccount: json['twitter_account'] as String,
    iconUrl: json['icon_url'] as String,
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'full_name': instance.fullName,
      'display_name': instance.displayName,
      'technical_stacks': instance.technicalStacks
          ?.map(const TechnicalStackConverter().toJson)
          ?.toList(),
      'github_account': instance.githubAccount,
      'twitter_account': instance.twitterAccount,
      'icon_url': instance.iconUrl,
    };
