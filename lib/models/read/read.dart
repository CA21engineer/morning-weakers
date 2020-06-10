import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'read.freezed.dart';

part 'read.g.dart';

@freezed
abstract class Read with _$Read {
  const factory Read({
    @required String id,
    @required @JsonKey(name: 'user_id') String userId,
    @required @JsonKey(name: 'notification_id') String notificationId,
    @required @JsonKey(name: 'is_read') bool isRead,
  }) = _Read;

  factory Read.fromJson(Map<String, dynamic> json) => _$ReadFromJson(json);
}
