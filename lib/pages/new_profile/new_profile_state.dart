import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_profile_state.freezed.dart';

@freezed
abstract class NewProfileState with _$NewProfileState {
  const factory NewProfileState({
    //url iconUrl,
    String fullName,
    String displayName,
    String twitterAccount,
    String githubAccount,
    //List<Stack> stacks,

}) = _NewProfileState;
}