import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login.freezed.dart';
part 'login.g.dart';

@freezed
abstract class Login with _$Login {
  const factory Login({
    @required String name,
    @required String email,
    @required @JsonKey(name: 'photo_url') String photoUrl,
  }) = _Login;

 factory Login.fromJson(Map<String, dynamic> json) => _$LoginFromJson(json);
}