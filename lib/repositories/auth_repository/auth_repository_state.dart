import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_repository_state.freezed.dart';

@freezed
abstract class AuthRepositoryState with _$AuthRepositoryState {
  const factory AuthRepositoryState({
    @Default(false) bool isLogin,
}) = _AuthRepositoryState;
}