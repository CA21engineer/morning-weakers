import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:morning_weakers/models/models.dart';

class ParticipantConverter implements JsonConverter<Participant, Map<String, dynamic>> {
  const ParticipantConverter();

  @override
  Participant fromJson(Map<String, dynamic> json) => Participant.fromJson(json);

  @override
  Map<String, dynamic> toJson(Participant participant) => participant.toJson();
}
