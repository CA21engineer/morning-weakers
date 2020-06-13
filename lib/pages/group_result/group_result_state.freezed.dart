// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'group_result_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$GroupResultStateTearOff {
  const _$GroupResultStateTearOff();

  _GroupResultState call({Hackathon hackathon}) {
    return _GroupResultState(
      hackathon: hackathon,
    );
  }
}

// ignore: unused_element
const $GroupResultState = _$GroupResultStateTearOff();

mixin _$GroupResultState {
  Hackathon get hackathon;

  $GroupResultStateCopyWith<GroupResultState> get copyWith;
}

abstract class $GroupResultStateCopyWith<$Res> {
  factory $GroupResultStateCopyWith(
          GroupResultState value, $Res Function(GroupResultState) then) =
      _$GroupResultStateCopyWithImpl<$Res>;
  $Res call({Hackathon hackathon});

  $HackathonCopyWith<$Res> get hackathon;
}

class _$GroupResultStateCopyWithImpl<$Res>
    implements $GroupResultStateCopyWith<$Res> {
  _$GroupResultStateCopyWithImpl(this._value, this._then);

  final GroupResultState _value;
  // ignore: unused_field
  final $Res Function(GroupResultState) _then;

  @override
  $Res call({
    Object hackathon = freezed,
  }) {
    return _then(_value.copyWith(
      hackathon:
          hackathon == freezed ? _value.hackathon : hackathon as Hackathon,
    ));
  }

  @override
  $HackathonCopyWith<$Res> get hackathon {
    if (_value.hackathon == null) {
      return null;
    }
    return $HackathonCopyWith<$Res>(_value.hackathon, (value) {
      return _then(_value.copyWith(hackathon: value));
    });
  }
}

abstract class _$GroupResultStateCopyWith<$Res>
    implements $GroupResultStateCopyWith<$Res> {
  factory _$GroupResultStateCopyWith(
          _GroupResultState value, $Res Function(_GroupResultState) then) =
      __$GroupResultStateCopyWithImpl<$Res>;
  @override
  $Res call({Hackathon hackathon});

  @override
  $HackathonCopyWith<$Res> get hackathon;
}

class __$GroupResultStateCopyWithImpl<$Res>
    extends _$GroupResultStateCopyWithImpl<$Res>
    implements _$GroupResultStateCopyWith<$Res> {
  __$GroupResultStateCopyWithImpl(
      _GroupResultState _value, $Res Function(_GroupResultState) _then)
      : super(_value, (v) => _then(v as _GroupResultState));

  @override
  _GroupResultState get _value => super._value as _GroupResultState;

  @override
  $Res call({
    Object hackathon = freezed,
  }) {
    return _then(_GroupResultState(
      hackathon:
          hackathon == freezed ? _value.hackathon : hackathon as Hackathon,
    ));
  }
}

class _$_GroupResultState
    with DiagnosticableTreeMixin
    implements _GroupResultState {
  const _$_GroupResultState({this.hackathon});

  @override
  final Hackathon hackathon;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GroupResultState(hackathon: $hackathon)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GroupResultState'))
      ..add(DiagnosticsProperty('hackathon', hackathon));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GroupResultState &&
            (identical(other.hackathon, hackathon) ||
                const DeepCollectionEquality()
                    .equals(other.hackathon, hackathon)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(hackathon);

  @override
  _$GroupResultStateCopyWith<_GroupResultState> get copyWith =>
      __$GroupResultStateCopyWithImpl<_GroupResultState>(this, _$identity);
}

abstract class _GroupResultState implements GroupResultState {
  const factory _GroupResultState({Hackathon hackathon}) = _$_GroupResultState;

  @override
  Hackathon get hackathon;
  @override
  _$GroupResultStateCopyWith<_GroupResultState> get copyWith;
}
