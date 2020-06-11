import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:morning_weakers/models/user/user.dart';

part 'profile_detail_state.freezed.dart';

@freezed
abstract class ProfileDetailState with _$ProfileDetailState {
  const factory ProfileDetailState({
    @Default(
      User(
        id: '',
        fullName: '',
        displayName: '',
        technicalStacks: [],
        githubAccount: '',
        twitterAccount: '',
        iconUrl: '',
      ),
    )
        User user,
  }) = _ProfileDetailState;
}
