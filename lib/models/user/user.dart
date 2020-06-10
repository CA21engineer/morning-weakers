import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:morning_weakers/models/models.dart';

part 'user.freezed.dart';

part 'user.g.dart';

@freezed
abstract class User with _$User {
  const factory User({
    @required String id,
    @required @JsonKey(name: 'full_name') String fullName,
    @required @JsonKey(name: 'display_name') String displayName,
    @required @JsonKey(name: 'technical_stack') List<TechnicalStack> technicalStacks,
    @required @JsonKey(name: 'github_account') String githubAccount,
    @required @JsonKey(name: 'twitter_account') String twitterAccount,
    @required @JsonKey(name: 'icon_url') String iconUrl,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
