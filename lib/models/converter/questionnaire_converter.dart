import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:morning_weakers/models/models.dart';

class QuestionnaireConverter implements JsonConverter<Questionnaire, Map<String, dynamic>> {
  const QuestionnaireConverter();

  @override
  Questionnaire fromJson(Map<String, dynamic> json) {
    if (json != null) {
      return Questionnaire.fromJson(json);
    } else {
      return null;
    }
  }

  @override
  Map<String, dynamic> toJson(Questionnaire questionnaire) => questionnaire?.toJson();
}
