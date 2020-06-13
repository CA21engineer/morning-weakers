// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'participant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Participant _$_$_ParticipantFromJson(Map<String, dynamic> json) {
  return _$_Participant(
    id: json['id'] as String,
    user: const UserConverter().fromJson(json['user'] as Map<String, dynamic>),
    desiredOccupations: (json['desired_occupations'] as List)
        ?.map((e) =>
            const TechnicalStackConverter().fromJson(e as Map<String, dynamic>))
        ?.toList(),
    workingDays: json['working_days'] as int,
    note: json['note'] as String,
    isAdmin: json['is_admin'] as bool,
  );
}

Map<String, dynamic> _$_$_ParticipantToJson(_$_Participant instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': const UserConverter().toJson(instance.user),
      'desired_occupations': instance.desiredOccupations
          ?.map(const TechnicalStackConverter().toJson)
          ?.toList(),
      'working_days': instance.workingDays,
      'note': instance.note,
      'is_admin': instance.isAdmin,
    };
