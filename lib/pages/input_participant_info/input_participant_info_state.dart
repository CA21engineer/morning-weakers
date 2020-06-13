import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:morning_weakers/models/models.dart';
part 'input_participant_info_state.freezed.dart';
part 'input_participant_info_state.g.dart';

@freezed
abstract class InputParticipantInfoState with _$InputParticipantInfoState {
  const factory InputParticipantInfoState({
    @JsonKey(name: 'desired_occupations') List<TechnicalStack> desiredOccupations,
    @JsonKey(name: 'working_days') String workingDays,
    String note,
  }) = _InputParticipantInfoState;

  factory InputParticipantInfoState.fromJson(Map<String, dynamic> json) => _$InputParticipantInfoStateFromJson(json);
}
