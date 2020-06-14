// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _HomeState call({Hackathon hackathon, Joined joined}) {
    return _HomeState(
      hackathon: hackathon,
      joined: joined,
    );
  }
}

// ignore: unused_element
const $HomeState = _$HomeStateTearOff();

mixin _$HomeState {
  Hackathon get hackathon;
  Joined get joined;

  $HomeStateCopyWith<HomeState> get copyWith;
}

abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call({Hackathon hackathon, Joined joined});

  $HackathonCopyWith<$Res> get hackathon;
  $JoinedCopyWith<$Res> get joined;
}

class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object hackathon = freezed,
    Object joined = freezed,
  }) {
    return _then(_value.copyWith(
      hackathon:
          hackathon == freezed ? _value.hackathon : hackathon as Hackathon,
      joined: joined == freezed ? _value.joined : joined as Joined,
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

  @override
  $JoinedCopyWith<$Res> get joined {
    if (_value.joined == null) {
      return null;
    }
    return $JoinedCopyWith<$Res>(_value.joined, (value) {
      return _then(_value.copyWith(joined: value));
    });
  }
}

abstract class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(
          _HomeState value, $Res Function(_HomeState) then) =
      __$HomeStateCopyWithImpl<$Res>;
  @override
  $Res call({Hackathon hackathon, Joined joined});

  @override
  $HackathonCopyWith<$Res> get hackathon;
  @override
  $JoinedCopyWith<$Res> get joined;
}

class __$HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(_HomeState _value, $Res Function(_HomeState) _then)
      : super(_value, (v) => _then(v as _HomeState));

  @override
  _HomeState get _value => super._value as _HomeState;

  @override
  $Res call({
    Object hackathon = freezed,
    Object joined = freezed,
  }) {
    return _then(_HomeState(
      hackathon:
          hackathon == freezed ? _value.hackathon : hackathon as Hackathon,
      joined: joined == freezed ? _value.joined : joined as Joined,
    ));
  }
}

class _$_HomeState with DiagnosticableTreeMixin implements _HomeState {
  const _$_HomeState({this.hackathon, this.joined});

  @override
  final Hackathon hackathon;
  @override
  final Joined joined;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState(hackathon: $hackathon, joined: $joined)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState'))
      ..add(DiagnosticsProperty('hackathon', hackathon))
      ..add(DiagnosticsProperty('joined', joined));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeState &&
            (identical(other.hackathon, hackathon) ||
                const DeepCollectionEquality()
                    .equals(other.hackathon, hackathon)) &&
            (identical(other.joined, joined) ||
                const DeepCollectionEquality().equals(other.joined, joined)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(hackathon) ^
      const DeepCollectionEquality().hash(joined);

  @override
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState({Hackathon hackathon, Joined joined}) = _$_HomeState;

  @override
  Hackathon get hackathon;
  @override
  Joined get joined;
  @override
  _$HomeStateCopyWith<_HomeState> get copyWith;
}
