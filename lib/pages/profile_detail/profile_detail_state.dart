import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'profile_detail_state.freezed.dart';

@freezed
abstract class ProfileDetailState with _$ProfileDetailState {
  const factory ProfileDetailState({
    @Default('') String fullName,
    @Default('') String displayName,
    @Default('') String githubAccount,
    @Default('') String twitterAccount,
    @Default('') String iconUrl,
  }) = _ProfileDetailState;
}
