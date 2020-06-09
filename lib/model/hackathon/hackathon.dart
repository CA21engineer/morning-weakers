import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'hackathon.freezed.dart';
part 'hackathon.g.dart';

@freezed
abstract class Hackathon with _$Hackathon {
  const factory Hackathon({
    @required String id,
    @required String title,
    @required String description,
    @required String theme,
    @required @JsonKey(name: 'icon_url') String iconUrl,
    @required @JsonKey(name: 'icon_url')String slackUrl,
    @required @JsonKey(name: 'icon_url') String presentationUrl,
    @required @JsonKey(name: 'icon_url') DateTime startDate,
    @required @JsonKey(name: 'icon_url') DateTime endDate,
}) = _Hackathon;

 factory Hackathon.fromJson(Map<String, dynamic> json) => _$HackathonFromJson(json);
}