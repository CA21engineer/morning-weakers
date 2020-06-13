import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:morning_weakers/models/notifier_state.dart';
import 'package:morning_weakers/models/models.dart';

part 'admin_group_edit_state.freezed.dart';

@freezed
abstract class AdminGroupEditState with _$AdminGroupEditState {
  const factory AdminGroupEditState({
    @Default(NotifierState.initial) NotifierState notifierState,
    @Default(<Participant>[]) List<Participant> participants,
    @Default(<Group>[]) List<Group> groups,
  }) = _AdminGroupEditState;
}
