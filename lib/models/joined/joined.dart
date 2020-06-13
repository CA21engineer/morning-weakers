import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'joined.freezed.dart';

part 'joined.g.dart';

@freezed
abstract class Joined with _$Joined {
  const factory Joined({
    @required String id,
    @required @JsonKey(name: 'user_id') String userId,
    @required @JsonKey(name: 'hackathon_ids') List<String> hackathonIds,
    @required @JsonKey(name: 'hackathon_icon_urls') List<String> hackathonIconUrls,
  }) = _Joined;

  factory Joined.fromJson(Map<String, dynamic> json) => _$JoinedFromJson(json);
}
