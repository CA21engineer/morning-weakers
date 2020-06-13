import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_state.freezed.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    @Default(false) bool isLogin,
    String firebaseUserId,
    @Default('')  String displayName,
    @Default('') String iconUrl,
  }) = _AuthState;
}
