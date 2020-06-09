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
