// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'profile_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ProfileDetailStateTearOff {
  const _$ProfileDetailStateTearOff();

  _ProfileDetailState call({@required User user}) {
    return _ProfileDetailState(
      user: user,
    );
  }
}

// ignore: unused_element
const $ProfileDetailState = _$ProfileDetailStateTearOff();

mixin _$ProfileDetailState {
  User get user;

  $ProfileDetailStateCopyWith<ProfileDetailState> get copyWith;
}

abstract class $ProfileDetailStateCopyWith<$Res> {
  factory $ProfileDetailStateCopyWith(
          ProfileDetailState value, $Res Function(ProfileDetailState) then) =
      _$ProfileDetailStateCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

class _$ProfileDetailStateCopyWithImpl<$Res>
    implements $ProfileDetailStateCopyWith<$Res> {
  _$ProfileDetailStateCopyWithImpl(this._value, this._then);

  final ProfileDetailState _value;
  // ignore: unused_field
  final $Res Function(ProfileDetailState) _then;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed ? _value.user : user as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

abstract class _$ProfileDetailStateCopyWith<$Res>
    implements $ProfileDetailStateCopyWith<$Res> {
  factory _$ProfileDetailStateCopyWith(
          _ProfileDetailState value, $Res Function(_ProfileDetailState) then) =
      __$ProfileDetailStateCopyWithImpl<$Res>;
  @override
  $Res call({User user});

  @override
  $UserCopyWith<$Res> get user;
}

class __$ProfileDetailStateCopyWithImpl<$Res>
    extends _$ProfileDetailStateCopyWithImpl<$Res>
    implements _$ProfileDetailStateCopyWith<$Res> {
  __$ProfileDetailStateCopyWithImpl(
      _ProfileDetailState _value, $Res Function(_ProfileDetailState) _then)
      : super(_value, (v) => _then(v as _ProfileDetailState));

  @override
  _ProfileDetailState get _value => super._value as _ProfileDetailState;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_ProfileDetailState(
      user: user == freezed ? _value.user : user as User,
    ));
  }
}

class _$_ProfileDetailState
    with DiagnosticableTreeMixin
    implements _ProfileDetailState {
  const _$_ProfileDetailState({@required this.user}) : assert(user != null);

  @override
  final User user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileDetailState(user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileDetailState'))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfileDetailState &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  _$ProfileDetailStateCopyWith<_ProfileDetailState> get copyWith =>
      __$ProfileDetailStateCopyWithImpl<_ProfileDetailState>(this, _$identity);
}

abstract class _ProfileDetailState implements ProfileDetailState {
  const factory _ProfileDetailState({@required User user}) =
      _$_ProfileDetailState;

  @override
  User get user;
  @override
  _$ProfileDetailStateCopyWith<_ProfileDetailState> get copyWith;
}
