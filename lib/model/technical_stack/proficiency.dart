// TODO: できるできないとかを増やす
import 'package:freezed_annotation/freezed_annotation.dart';

enum Proficiency {
  @JsonValue('GOOD')
  Good,
  @JsonValue('BAD')
  Bad
}
