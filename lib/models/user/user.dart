import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:morning_weakers/models/converter/converters.dart';
import 'package:morning_weakers/models/models.dart';

part 'user.freezed.dart';

part 'user.g.dart';

// TODO: idを@requiredにする
@freezed
abstract class User with _$User {
  const factory User({
    String id,
    @required @JsonKey(name: 'full_name') String fullName,
    @required @JsonKey(name: 'display_name') String displayName,
    @JsonKey(name: 'technical_stacks') @TechnicalStackConverter() List<TechnicalStack> technicalStacks,
    @JsonKey(name: 'github_account') String githubAccount,
    @JsonKey(name: 'twitter_account') String twitterAccount,
    @required @JsonKey(name: 'icon_url') String iconUrl,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
