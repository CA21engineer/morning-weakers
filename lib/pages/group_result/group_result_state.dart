import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:morning_weakers/models/models.dart';

part 'group_result_state.freezed.dart';

@freezed
abstract class GroupResultState with _$GroupResultState {
  const factory GroupResultState({
    Hackathon hackathon,
  }) = _GroupResultState;
}
