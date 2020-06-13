// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_participant_info_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InputParticipantInfoState _$_$_InputParticipantInfoStateFromJson(
    Map<String, dynamic> json) {
  return _$_InputParticipantInfoState(
    desiredOccupations: (json['desired_occupations'] as List)
        ?.map((e) => e == null
            ? null
            : TechnicalStack.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    workingDays: json['working_days'] as String,
    note: json['note'] as String,
  );
}

Map<String, dynamic> _$_$_InputParticipantInfoStateToJson(
        _$_InputParticipantInfoState instance) =>
    <String, dynamic>{
      'desired_occupations': instance.desiredOccupations,
      'working_days': instance.workingDays,
      'note': instance.note,
    };
