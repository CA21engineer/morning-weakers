// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'login.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Login _$LoginFromJson(Map<String, dynamic> json) {
  return _Login.fromJson(json);
}

class _$LoginTearOff {
  const _$LoginTearOff();

  _Login call(
      {@required String name,
      @required String email,
      @required @JsonKey(name: 'photo_url') String photoUrl}) {
    return _Login(
      name: name,
      email: email,
      photoUrl: photoUrl,
    );
  }
}

// ignore: unused_element
const $Login = _$LoginTearOff();

mixin _$Login {
  String get name;
  String get email;
  @JsonKey(name: 'photo_url')
  String get photoUrl;

  Map<String, dynamic> toJson();
  $LoginCopyWith<Login> get copyWith;
}

abstract class $LoginCopyWith<$Res> {
  factory $LoginCopyWith(Login value, $Res Function(Login) then) =
      _$LoginCopyWithImpl<$Res>;
  $Res call(
      {String name, String email, @JsonKey(name: 'photo_url') String photoUrl});
}

class _$LoginCopyWithImpl<$Res> implements $LoginCopyWith<$Res> {
  _$LoginCopyWithImpl(this._value, this._then);

  final Login _value;
  // ignore: unused_field
  final $Res Function(Login) _then;

  @override
  $Res call({
    Object name = freezed,
    Object email = freezed,
    Object photoUrl = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      email: email == freezed ? _value.email : email as String,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
    ));
  }
}

abstract class _$LoginCopyWith<$Res> implements $LoginCopyWith<$Res> {
  factory _$LoginCopyWith(_Login value, $Res Function(_Login) then) =
      __$LoginCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name, String email, @JsonKey(name: 'photo_url') String photoUrl});
}

class __$LoginCopyWithImpl<$Res> extends _$LoginCopyWithImpl<$Res>
    implements _$LoginCopyWith<$Res> {
  __$LoginCopyWithImpl(_Login _value, $Res Function(_Login) _then)
      : super(_value, (v) => _then(v as _Login));

  @override
  _Login get _value => super._value as _Login;

  @override
  $Res call({
    Object name = freezed,
    Object email = freezed,
    Object photoUrl = freezed,
  }) {
    return _then(_Login(
      name: name == freezed ? _value.name : name as String,
      email: email == freezed ? _value.email : email as String,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
    ));
  }
}

@JsonSerializable()
class _$_Login with DiagnosticableTreeMixin implements _Login {
  const _$_Login(
      {@required this.name,
      @required this.email,
      @required @JsonKey(name: 'photo_url') this.photoUrl})
      : assert(name != null),
        assert(email != null),
        assert(photoUrl != null);

  factory _$_Login.fromJson(Map<String, dynamic> json) =>
      _$_$_LoginFromJson(json);

  @override
  final String name;
  @override
  final String email;
  @override
  @JsonKey(name: 'photo_url')
  final String photoUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Login(name: $name, email: $email, photoUrl: $photoUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Login'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('photoUrl', photoUrl));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Login &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(photoUrl);

  @override
  _$LoginCopyWith<_Login> get copyWith =>
      __$LoginCopyWithImpl<_Login>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LoginToJson(this);
  }
}

abstract class _Login implements Login {
  const factory _Login(
      {@required String name,
      @required String email,
      @required @JsonKey(name: 'photo_url') String photoUrl}) = _$_Login;

  factory _Login.fromJson(Map<String, dynamic> json) = _$_Login.fromJson;

  @override
  String get name;
  @override
  String get email;
  @override
  @JsonKey(name: 'photo_url')
  String get photoUrl;
  @override
  _$LoginCopyWith<_Login> get copyWith;
}
