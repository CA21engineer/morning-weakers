import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:morning_weakers/models/converter/converters.dart';
import 'package:morning_weakers/models/models.dart';

part 'notification.freezed.dart';

part 'notification.g.dart';

// TODO: idを@requiredにする
@freezed
abstract class Notification with _$Notification {
  const factory Notification({
    String id,
    @required String title,
    @required String description,
    @required @JsonKey(name: 'published_user') @UserConverter() User publishedUser,
    @required @JsonKey(name: 'created_at') DateTime createdAt,
    @required @JsonKey(name: 'is_important') bool isImportant,
  }) = _Notification;

  factory Notification.fromJson(Map<String, dynamic> json) => _$NotificationFromJson(json);
}
