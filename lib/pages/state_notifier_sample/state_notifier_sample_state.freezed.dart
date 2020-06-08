// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'state_notifier_sample_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SampleStateTearOff {
  const _$SampleStateTearOff();

  _SampleState call(String name) {
    return _SampleState(
      name,
    );
  }
}

// ignore: unused_element
const $SampleState = _$SampleStateTearOff();

mixin _$SampleState {
  String get name;

  $SampleStateCopyWith<SampleState> get copyWith;
}

abstract class $SampleStateCopyWith<$Res> {
  factory $SampleStateCopyWith(
          SampleState value, $Res Function(SampleState) then) =
      _$SampleStateCopyWithImpl<$Res>;
  $Res call({String name});
}

class _$SampleStateCopyWithImpl<$Res> implements $SampleStateCopyWith<$Res> {
  _$SampleStateCopyWithImpl(this._value, this._then);

  final SampleState _value;
  // ignore: unused_field
  final $Res Function(SampleState) _then;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

abstract class _$SampleStateCopyWith<$Res>
    implements $SampleStateCopyWith<$Res> {
  factory _$SampleStateCopyWith(
          _SampleState value, $Res Function(_SampleState) then) =
      __$SampleStateCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

class __$SampleStateCopyWithImpl<$Res> extends _$SampleStateCopyWithImpl<$Res>
    implements _$SampleStateCopyWith<$Res> {
  __$SampleStateCopyWithImpl(
      _SampleState _value, $Res Function(_SampleState) _then)
      : super(_value, (v) => _then(v as _SampleState));

  @override
  _SampleState get _value => super._value as _SampleState;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_SampleState(
      name == freezed ? _value.name : name as String,
    ));
  }
}

class _$_SampleState with DiagnosticableTreeMixin implements _SampleState {
  const _$_SampleState(this.name) : assert(name != null);

  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SampleState(name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SampleState'))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SampleState &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  _$SampleStateCopyWith<_SampleState> get copyWith =>
      __$SampleStateCopyWithImpl<_SampleState>(this, _$identity);
}

abstract class _SampleState implements SampleState {
  const factory _SampleState(String name) = _$_SampleState;

  @override
  String get name;
  @override
  _$SampleStateCopyWith<_SampleState> get copyWith;
}
