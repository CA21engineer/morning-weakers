// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Read _$_$_ReadFromJson(Map<String, dynamic> json) {
  return _$_Read(
    id: json['id'] as String,
    userId: json['user_id'] as String,
    notificationId: json['notification_id'] as String,
    isRead: json['is_read'] as bool,
  );
}

Map<String, dynamic> _$_$_ReadToJson(_$_Read instance) => <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'notification_id': instance.notificationId,
      'is_read': instance.isRead,
    };
