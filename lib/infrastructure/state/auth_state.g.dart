// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthState _$_$_AuthStateFromJson(Map<String, dynamic> json) {
  return _$_AuthState(
    isLogin: json['isLogin'] as bool ?? false,
    displayName: json['display_name'] as String,
    iconUrl: json['icon_url'] as String,
  );
}

Map<String, dynamic> _$_$_AuthStateToJson(_$_AuthState instance) =>
    <String, dynamic>{
      'isLogin': instance.isLogin,
      'display_name': instance.displayName,
      'icon_url': instance.iconUrl,
    };
