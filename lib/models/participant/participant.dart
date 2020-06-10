import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:morning_weakers/models/models.dart';

part 'participant.freezed.dart';

part 'participant.g.dart';

@freezed
abstract class Participant with _$Participant {
  const factory Participant({
    @required String id,
    @required User user,
    @required @JsonKey(name: 'desired_occupation') List<TechnicalStack> desiredOccupations,
    @required @JsonKey(name: 'working_days') int workingDays,
    @required String note,
    @required @JsonKey(name: 'is_admin') bool isAdmin,
  }) = _Participant;

  factory Participant.fromJson(Map<String, dynamic> json) => _$ParticipantFromJson(json);
}
