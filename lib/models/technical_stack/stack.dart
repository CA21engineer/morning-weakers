// TODO: 増やす
import 'package:freezed_annotation/freezed_annotation.dart';

enum Stack {
  @JsonValue('IOS')
  iOS,
  @JsonValue('ANDROID')
  Android,
  @JsonValue('Serverside')
  Serverside,
  @JsonValue('Web')
  Web,
  @JsonValue('Unity')
  Unity,
}

extension StackExtension on Stack {
  String getValue() {
    switch (this) {
      case Stack.iOS:
        return 'iOS';
      case Stack.Android:
        return 'Android';
      case Stack.Serverside:
        return 'Serverside';
      case Stack.Web:
        return 'Web';
      case Stack.Unity:
        return 'Unity';
    }
  }
}
