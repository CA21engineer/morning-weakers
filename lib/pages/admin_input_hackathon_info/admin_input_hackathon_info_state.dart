import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:morning_weakers/models/notifier_state.dart';

part 'admin_input_hackathon_info_state.freezed.dart';

@freezed
abstract class AdminInputHackathonInfoState with _$AdminInputHackathonInfoState {
  const factory AdminInputHackathonInfoState({
    @Default(NotifierState.initial) NotifierState notifierState,
    @Default('') String title,
    @Default('') String description,
    @Default('') String theme,
    DateTime startDate,
    DateTime endDate,
    int span,
  }) = _AdminInputHackathonInfoState;
}
