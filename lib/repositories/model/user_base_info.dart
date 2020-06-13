import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_base_info.freezed.dart';

@freezed
abstract class UserBaseInfo with _$UserBaseInfo {
  const factory UserBaseInfo({
    @required String displayName,
    @required String iconUrl,
  }) = _UserBaseInfo;
}
