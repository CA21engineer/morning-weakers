import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:morning_weakers/models/models.dart';

class TechnicalStackConverter implements JsonConverter<TechnicalStack, Map<String, dynamic>> {
  const TechnicalStackConverter();

  @override
  TechnicalStack fromJson(Map<String, dynamic> json) => TechnicalStack.fromJson(json);

  @override
  Map<String, dynamic> toJson(TechnicalStack technicalStack) => technicalStack.toJson();
}
