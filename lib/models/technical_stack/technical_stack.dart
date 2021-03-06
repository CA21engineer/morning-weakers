import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:morning_weakers/models/models.dart';

part 'technical_stack.freezed.dart';

part 'technical_stack.g.dart';

// TODO: idを@requiredにする?idいらなくね
@freezed
abstract class TechnicalStack with _$TechnicalStack {
  const factory TechnicalStack({
    String id,
    @required Stack stack,
    @required List<Language> languages,
    @required Proficiency proficiency,
    int priority,
  }) = _TechnicalStack;

  factory TechnicalStack.fromJson(Map<String, dynamic> json) =>
      _$TechnicalStackFromJson(json);
}

extension TechnicalStacksExtension on List<TechnicalStack> {
  String getCombinedLanguageText() {
    String text = '';
    asMap().forEach((index, technicalStack) {
      text += '${technicalStack.stack.getValue()}';
      text += index != length - 1 ? ', ' : '';
    });
    return text;
  }
}
