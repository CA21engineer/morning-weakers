// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'technical_stack.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TechnicalStack _$_$_TechnicalStackFromJson(Map<String, dynamic> json) {
  return _$_TechnicalStack(
    id: json['id'] as String,
    stack: _$enumDecodeNullable(_$StackEnumMap, json['stack']),
    languages: (json['languages'] as List)
        ?.map((e) => _$enumDecodeNullable(_$LanguageEnumMap, e))
        ?.toList(),
    proficiency:
        _$enumDecodeNullable(_$ProficiencyEnumMap, json['proficiency']),
    priority: json['priority'] as int,
  );
}

Map<String, dynamic> _$_$_TechnicalStackToJson(_$_TechnicalStack instance) =>
    <String, dynamic>{
      'id': instance.id,
      'stack': _$StackEnumMap[instance.stack],
      'languages':
          instance.languages?.map((e) => _$LanguageEnumMap[e])?.toList(),
      'proficiency': _$ProficiencyEnumMap[instance.proficiency],
      'priority': instance.priority,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$StackEnumMap = {
  Stack.iOS: 'IOS',
  Stack.Android: 'ANDROID',
  Stack.Serverside: 'Serverside',
  Stack.Web: 'Web',
  Stack.Unity: 'Unity',
};

const _$LanguageEnumMap = {
  Language.Swift: 'SWIFT',
  Language.Kotlin: 'KOTLIN',
};

const _$ProficiencyEnumMap = {
  Proficiency.Good: 'GOOD',
  Proficiency.Bad: 'BAD',
};
