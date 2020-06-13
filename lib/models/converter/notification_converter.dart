import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:morning_weakers/models/models.dart';

class NotificationConverter implements JsonConverter<Notification, Map<String, dynamic>> {
  const NotificationConverter();

  @override
  Notification fromJson(Map<String, dynamic> json) {
    if (json != null) {
      return Notification.fromJson(json);
    } else {
      return null;
    }
  }

  @override
  Map<String, dynamic> toJson(Notification notification) => notification?.toJson();
}
