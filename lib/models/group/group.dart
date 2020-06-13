import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:morning_weakers/models/converter/converters.dart';
import 'package:morning_weakers/models/models.dart';

part 'group.freezed.dart';

part 'group.g.dart';

@freezed
abstract class Group with _$Group {
  const factory Group({
    @required String id,
    @required @JsonKey(name: 'group_name') String groupName,
    @required @JsonKey(name: 'github_url') String githubUrl,
    @required @JsonKey(name: 'slide_url') String slideUrl,
    @required @JsonKey(name: 'other_urls') @LinkConverter() List<Link> otherUrls,
    @required @JsonKey(name: 'icon_url') String iconUrl,
    @required @ParticipantConverter() List<Participant> participants,
  }) = _Group;

  factory Group.fromJson(Map<String, dynamic> json) => _$GroupFromJson(json);
}
