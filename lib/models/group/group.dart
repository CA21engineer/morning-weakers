import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:morning_weakers/models/converter/converters.dart';
import 'package:morning_weakers/models/models.dart';

part 'group.freezed.dart';

part 'group.g.dart';

// TODO: idを@requiredにする
@freezed
abstract class Group with _$Group {
  const factory Group({
    String id,
    @required @JsonKey(name: 'group_name') String groupName,
    @JsonKey(name: 'github_url') String githubUrl,
    @JsonKey(name: 'slide_url') String slideUrl,
    @JsonKey(name: 'other_urls') @LinkConverter() List<Link> otherUrls,
    @JsonKey(name: 'icon_url') String iconUrl,
    @required @ParticipantConverter() List<Participant> participants,
  }) = _Group;

  factory Group.fromJson(Map<String, dynamic> json) => _$GroupFromJson(json);
}
