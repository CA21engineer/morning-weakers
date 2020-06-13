import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:morning_weakers/models/models.dart';

class GroupConverter implements JsonConverter<Group, Map<String, dynamic>> {
  const GroupConverter();

  @override
  Group fromJson(Map<String, dynamic> json) => Group.fromJson(json);

  @override
  Map<String, dynamic> toJson(Group group) => group.toJson();
}
