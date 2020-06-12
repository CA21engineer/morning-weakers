// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AuthState _$AuthStateFromJson(Map<String, dynamic> json) {
  return _AuthState.fromJson(json);
}

class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  _AuthState call(
      {bool isLogin = false,
      @JsonKey(name: 'display_name') String displayName = '',
      @JsonKey(name: 'icon_url') String iconUrl = ''}) {
    return _AuthState(
      isLogin: isLogin,
      displayName: displayName,
      iconUrl: iconUrl,
    );
  }
}

// ignore: unused_element
const $AuthState = _$AuthStateTearOff();

mixin _$AuthState {
  bool get isLogin;
  @JsonKey(name: 'display_name')
  String get displayName;
  @JsonKey(name: 'icon_url')
  String get iconUrl;

  Map<String, dynamic> toJson();
  $AuthStateCopyWith<AuthState> get copyWith;
}

abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLogin,
      @JsonKey(name: 'display_name') String displayName,
      @JsonKey(name: 'icon_url') String iconUrl});
}

class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;

  @override
  $Res call({
    Object isLogin = freezed,
    Object displayName = freezed,
    Object iconUrl = freezed,
  }) {
    return _then(_value.copyWith(
      isLogin: isLogin == freezed ? _value.isLogin : isLogin as bool,
      displayName:
          displayName == freezed ? _value.displayName : displayName as String,
      iconUrl: iconUrl == freezed ? _value.iconUrl : iconUrl as String,
    ));
  }
}

abstract class _$AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(
          _AuthState value, $Res Function(_AuthState) then) =
      __$AuthStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLogin,
      @JsonKey(name: 'display_name') String displayName,
      @JsonKey(name: 'icon_url') String iconUrl});
}

class __$AuthStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(_AuthState _value, $Res Function(_AuthState) _then)
      : super(_value, (v) => _then(v as _AuthState));

  @override
  _AuthState get _value => super._value as _AuthState;

  @override
  $Res call({
    Object isLogin = freezed,
    Object displayName = freezed,
    Object iconUrl = freezed,
  }) {
    return _then(_AuthState(
      isLogin: isLogin == freezed ? _value.isLogin : isLogin as bool,
      displayName:
          displayName == freezed ? _value.displayName : displayName as String,
      iconUrl: iconUrl == freezed ? _value.iconUrl : iconUrl as String,
    ));
  }
}

@JsonSerializable()
class _$_AuthState with DiagnosticableTreeMixin implements _AuthState {
  const _$_AuthState(
      {this.isLogin = false,
      @JsonKey(name: 'display_name') this.displayName = '',
      @JsonKey(name: 'icon_url') this.iconUrl = ''})
      : assert(isLogin != null),
        assert(displayName != null),
        assert(iconUrl != null);

  factory _$_AuthState.fromJson(Map<String, dynamic> json) =>
      _$_$_AuthStateFromJson(json);

  @JsonKey(defaultValue: false)
  @override
  final bool isLogin;
  @override
  @JsonKey(name: 'display_name')
  final String displayName;
  @override
  @JsonKey(name: 'icon_url')
  final String iconUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState(isLogin: $isLogin, displayName: $displayName, iconUrl: $iconUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState'))
      ..add(DiagnosticsProperty('isLogin', isLogin))
      ..add(DiagnosticsProperty('displayName', displayName))
      ..add(DiagnosticsProperty('iconUrl', iconUrl));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthState &&
            (identical(other.isLogin, isLogin) ||
                const DeepCollectionEquality()
                    .equals(other.isLogin, isLogin)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.iconUrl, iconUrl) ||
                const DeepCollectionEquality().equals(other.iconUrl, iconUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLogin) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(iconUrl);

  @override
  _$AuthStateCopyWith<_AuthState> get copyWith =>
      __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AuthStateToJson(this);
  }
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {bool isLogin,
      @JsonKey(name: 'display_name') String displayName,
      @JsonKey(name: 'icon_url') String iconUrl}) = _$_AuthState;

  factory _AuthState.fromJson(Map<String, dynamic> json) =
      _$_AuthState.fromJson;

  @override
  bool get isLogin;
  @override
  @JsonKey(name: 'display_name')
  String get displayName;
  @override
  @JsonKey(name: 'icon_url')
  String get iconUrl;
  @override
  _$AuthStateCopyWith<_AuthState> get copyWith;
}
