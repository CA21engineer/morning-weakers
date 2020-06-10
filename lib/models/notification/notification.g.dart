// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Notification _$_$_NotificationFromJson(Map<String, dynamic> json) {
  return _$_Notification(
    id: json['id'] as String,
    title: json['title'] as String,
    description: json['description'] as String,
    publishedUser: json['published_user'] == null
        ? null
        : User.fromJson(json['published_user'] as Map<String, dynamic>),
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    isImportant: json['is_important'] as bool,
  );
}

Map<String, dynamic> _$_$_NotificationToJson(_$_Notification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'published_user': instance.publishedUser,
      'created_at': instance.createdAt?.toIso8601String(),
      'is_important': instance.isImportant,
    };
