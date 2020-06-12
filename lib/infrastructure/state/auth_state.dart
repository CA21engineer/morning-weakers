import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_state.freezed.dart';
part 'auth_state.g.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    @Default(false) bool isLogin,
    @Default('') @JsonKey(name: 'display_name') String displayName,
    @Default('') @JsonKey(name: 'icon_url') String iconUrl,
  }) = _AuthState;

 factory AuthState.fromJson(Map<String, dynamic> json) => _$AuthStateFromJson(json);
}
