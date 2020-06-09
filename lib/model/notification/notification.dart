import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification.freezed.dart';

part 'notification.g.dart';

@freezed
abstract class Notification with _$Notification {
  const factory Notification({
    @required String id,
    @required String title,
    @required String description,
    //@required @JsonKey(name:'') User publishedUser,
    //@required @JsonKey(name:'') TimeStamp createAt,
    @required @JsonKey(name:'is_important') bool isImportant,
  }) = _Notification;

  factory Notification.fromJson(Map<String, dynamic> json) =>
      _$NotificationFromJson(json);
}
