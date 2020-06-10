import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:morning_weakers/models/models.dart';

part 'user.freezed.dart';

part 'user.g.dart';

@freezed
abstract class User with _$User {
  const factory User({
    @required String id,
    @Default('') @JsonKey(name: 'full_name') String fullName,
    @Default('') @JsonKey(name: 'display_name') String displayName,
    @JsonKey(name: 'technical_stack') List<TechnicalStack> technicalStacks,
    @Default('') @JsonKey(name: 'github_account') String githubAccount,
    @Default('') @JsonKey(name: 'twitter_account') String twitterAccount,
    @Default('') @JsonKey(name: 'icon_url') String iconUrl,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
