// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'user_base_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UserBaseInfoTearOff {
  const _$UserBaseInfoTearOff();

  _UserBaseInfo call({@required String displayName, @required String iconUrl}) {
    return _UserBaseInfo(
      displayName: displayName,
      iconUrl: iconUrl,
    );
  }
}

// ignore: unused_element
const $UserBaseInfo = _$UserBaseInfoTearOff();

mixin _$UserBaseInfo {
  String get displayName;
  String get iconUrl;

  $UserBaseInfoCopyWith<UserBaseInfo> get copyWith;
}

abstract class $UserBaseInfoCopyWith<$Res> {
  factory $UserBaseInfoCopyWith(
          UserBaseInfo value, $Res Function(UserBaseInfo) then) =
      _$UserBaseInfoCopyWithImpl<$Res>;
  $Res call({String displayName, String iconUrl});
}

class _$UserBaseInfoCopyWithImpl<$Res> implements $UserBaseInfoCopyWith<$Res> {
  _$UserBaseInfoCopyWithImpl(this._value, this._then);

  final UserBaseInfo _value;
  // ignore: unused_field
  final $Res Function(UserBaseInfo) _then;

  @override
  $Res call({
    Object displayName = freezed,
    Object iconUrl = freezed,
  }) {
    return _then(_value.copyWith(
      displayName:
          displayName == freezed ? _value.displayName : displayName as String,
      iconUrl: iconUrl == freezed ? _value.iconUrl : iconUrl as String,
    ));
  }
}

abstract class _$UserBaseInfoCopyWith<$Res>
    implements $UserBaseInfoCopyWith<$Res> {
  factory _$UserBaseInfoCopyWith(
          _UserBaseInfo value, $Res Function(_UserBaseInfo) then) =
      __$UserBaseInfoCopyWithImpl<$Res>;
  @override
  $Res call({String displayName, String iconUrl});
}

class __$UserBaseInfoCopyWithImpl<$Res> extends _$UserBaseInfoCopyWithImpl<$Res>
    implements _$UserBaseInfoCopyWith<$Res> {
  __$UserBaseInfoCopyWithImpl(
      _UserBaseInfo _value, $Res Function(_UserBaseInfo) _then)
      : super(_value, (v) => _then(v as _UserBaseInfo));

  @override
  _UserBaseInfo get _value => super._value as _UserBaseInfo;

  @override
  $Res call({
    Object displayName = freezed,
    Object iconUrl = freezed,
  }) {
    return _then(_UserBaseInfo(
      displayName:
          displayName == freezed ? _value.displayName : displayName as String,
      iconUrl: iconUrl == freezed ? _value.iconUrl : iconUrl as String,
    ));
  }
}

class _$_UserBaseInfo with DiagnosticableTreeMixin implements _UserBaseInfo {
  const _$_UserBaseInfo({@required this.displayName, @required this.iconUrl})
      : assert(displayName != null),
        assert(iconUrl != null);

  @override
  final String displayName;
  @override
  final String iconUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserBaseInfo(displayName: $displayName, iconUrl: $iconUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserBaseInfo'))
      ..add(DiagnosticsProperty('displayName', displayName))
      ..add(DiagnosticsProperty('iconUrl', iconUrl));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserBaseInfo &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.iconUrl, iconUrl) ||
                const DeepCollectionEquality().equals(other.iconUrl, iconUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(iconUrl);

  @override
  _$UserBaseInfoCopyWith<_UserBaseInfo> get copyWith =>
      __$UserBaseInfoCopyWithImpl<_UserBaseInfo>(this, _$identity);
}

abstract class _UserBaseInfo implements UserBaseInfo {
  const factory _UserBaseInfo(
      {@required String displayName,
      @required String iconUrl}) = _$_UserBaseInfo;

  @override
  String get displayName;
  @override
  String get iconUrl;
  @override
  _$UserBaseInfoCopyWith<_UserBaseInfo> get copyWith;
}
