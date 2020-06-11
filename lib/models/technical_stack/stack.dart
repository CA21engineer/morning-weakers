// TODO: 増やす
import 'package:freezed_annotation/freezed_annotation.dart';

enum Stack {
  @JsonValue('IOS')
  iOS,
  @JsonValue('ANDROID')
  Android,
  @JsonValue('Serverside')
  Serverside,
}

String getStackValue(Stack stack) {
  switch (stack) {
    case Stack.iOS:
      return 'iOS';
    case Stack.Android:
      return 'Android';
    case Stack.Serverside:
      return 'Serverside';
  }
}
