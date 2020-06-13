// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'auth_repository_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthRepositoryStateTearOff {
  const _$AuthRepositoryStateTearOff();

  _AuthRepositoryState call({bool isLogin = false}) {
    return _AuthRepositoryState(
      isLogin: isLogin,
    );
  }
}

// ignore: unused_element
const $AuthRepositoryState = _$AuthRepositoryStateTearOff();

mixin _$AuthRepositoryState {
  bool get isLogin;

  $AuthRepositoryStateCopyWith<AuthRepositoryState> get copyWith;
}

abstract class $AuthRepositoryStateCopyWith<$Res> {
  factory $AuthRepositoryStateCopyWith(
          AuthRepositoryState value, $Res Function(AuthRepositoryState) then) =
      _$AuthRepositoryStateCopyWithImpl<$Res>;
  $Res call({bool isLogin});
}

class _$AuthRepositoryStateCopyWithImpl<$Res>
    implements $AuthRepositoryStateCopyWith<$Res> {
  _$AuthRepositoryStateCopyWithImpl(this._value, this._then);

  final AuthRepositoryState _value;
  // ignore: unused_field
  final $Res Function(AuthRepositoryState) _then;

  @override
  $Res call({
    Object isLogin = freezed,
  }) {
    return _then(_value.copyWith(
      isLogin: isLogin == freezed ? _value.isLogin : isLogin as bool,
    ));
  }
}

abstract class _$AuthRepositoryStateCopyWith<$Res>
    implements $AuthRepositoryStateCopyWith<$Res> {
  factory _$AuthRepositoryStateCopyWith(_AuthRepositoryState value,
          $Res Function(_AuthRepositoryState) then) =
      __$AuthRepositoryStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLogin});
}

class __$AuthRepositoryStateCopyWithImpl<$Res>
    extends _$AuthRepositoryStateCopyWithImpl<$Res>
    implements _$AuthRepositoryStateCopyWith<$Res> {
  __$AuthRepositoryStateCopyWithImpl(
      _AuthRepositoryState _value, $Res Function(_AuthRepositoryState) _then)
      : super(_value, (v) => _then(v as _AuthRepositoryState));

  @override
  _AuthRepositoryState get _value => super._value as _AuthRepositoryState;

  @override
  $Res call({
    Object isLogin = freezed,
  }) {
    return _then(_AuthRepositoryState(
      isLogin: isLogin == freezed ? _value.isLogin : isLogin as bool,
    ));
  }
}

class _$_AuthRepositoryState
    with DiagnosticableTreeMixin
    implements _AuthRepositoryState {
  const _$_AuthRepositoryState({this.isLogin = false})
      : assert(isLogin != null);

  @JsonKey(defaultValue: false)
  @override
  final bool isLogin;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthRepositoryState(isLogin: $isLogin)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthRepositoryState'))
      ..add(DiagnosticsProperty('isLogin', isLogin));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthRepositoryState &&
            (identical(other.isLogin, isLogin) ||
                const DeepCollectionEquality().equals(other.isLogin, isLogin)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isLogin);

  @override
  _$AuthRepositoryStateCopyWith<_AuthRepositoryState> get copyWith =>
      __$AuthRepositoryStateCopyWithImpl<_AuthRepositoryState>(
          this, _$identity);
}

abstract class _AuthRepositoryState implements AuthRepositoryState {
  const factory _AuthRepositoryState({bool isLogin}) = _$_AuthRepositoryState;

  @override
  bool get isLogin;
  @override
  _$AuthRepositoryStateCopyWith<_AuthRepositoryState> get copyWith;
}
