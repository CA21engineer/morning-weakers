// TODO: 言語増やす
import 'package:freezed_annotation/freezed_annotation.dart';

enum Language {
  @JsonValue('SWIFT')
  Swift,
  @JsonValue('KOTLIN')
  Kotlin,
}

String getLanguageValue(Language language) {
  switch (language) {
    case Language.Swift:
      return 'Swift';
    case Language.Kotlin:
      return 'Kotlin';
  }
}

extension LanguagesExtension on List<Language> {
  String getCombinedLanguageText() {
    String text = '';
    asMap().forEach((index, language) {
      text += '${getLanguageValue(language)}';
      text += index != length - 1 ? ', ' : '';
    });
    return text;
  }
}
