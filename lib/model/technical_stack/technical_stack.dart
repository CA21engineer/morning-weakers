import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:morning_weakers/model/technical_stack/language.dart';
import 'package:morning_weakers/model/technical_stack/proficiency.dart';
import 'package:morning_weakers/model/technical_stack/stack.dart';

part 'technical_stack.freezed.dart';

part 'technical_stack.g.dart';

@freezed
abstract class TechnicalStack with _$TechnicalStack {
  const factory TechnicalStack({
    @required String id,
    @required Stack stack,
    List<Language> language,
    @required Proficiency proficiency,
    int priority,
  }) = _TechnicalStack;

  factory TechnicalStack.fromJson(Map<String, dynamic> json) => _$TechnicalStackFromJson(json);
}
