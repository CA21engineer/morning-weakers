import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:morning_weakers/models/models.dart';

part 'state_notifier_sample_state.freezed.dart';

@freezed
abstract class SampleState with _$SampleState {
  const factory SampleState({
    @Default(0) int count,
    // テスト用のUser
    @required User user,
  }) = _SampleState;
}
