import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:morning_weakers/models/notifier_state.dart';

part 'state_management_sample_state.freezed.dart';

@freezed
abstract class StateManagementSampleState with _$StateManagementSampleState {
  const factory StateManagementSampleState({
    @Default(NotifierState.initial) NotifierState notifierState,
  }) = _StateManagementSampleState;
}
