// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'state_notifier_sample_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SampleStateTearOff {
  const _$SampleStateTearOff();

  _SampleState call({int count = 0}) {
    return _SampleState(
      count: count,
    );
  }
}

// ignore: unused_element
const $SampleState = _$SampleStateTearOff();

mixin _$SampleState {
  int get count;

  $SampleStateCopyWith<SampleState> get copyWith;
}

abstract class $SampleStateCopyWith<$Res> {
  factory $SampleStateCopyWith(
          SampleState value, $Res Function(SampleState) then) =
      _$SampleStateCopyWithImpl<$Res>;
  $Res call({int count});
}

class _$SampleStateCopyWithImpl<$Res> implements $SampleStateCopyWith<$Res> {
  _$SampleStateCopyWithImpl(this._value, this._then);

  final SampleState _value;
  // ignore: unused_field
  final $Res Function(SampleState) _then;

  @override
  $Res call({
    Object count = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed ? _value.count : count as int,
    ));
  }
}

abstract class _$SampleStateCopyWith<$Res>
    implements $SampleStateCopyWith<$Res> {
  factory _$SampleStateCopyWith(
          _SampleState value, $Res Function(_SampleState) then) =
      __$SampleStateCopyWithImpl<$Res>;
  @override
  $Res call({int count});
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
    Object count = freezed,
  }) {
    return _then(_SampleState(
      count: count == freezed ? _value.count : count as int,
    ));
  }
}

class _$_SampleState with DiagnosticableTreeMixin implements _SampleState {
  const _$_SampleState({this.count = 0}) : assert(count != null);

  @JsonKey(defaultValue: 0)
  @override
  final int count;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SampleState(count: $count)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SampleState'))
      ..add(DiagnosticsProperty('count', count));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SampleState &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(count);

  @override
  _$SampleStateCopyWith<_SampleState> get copyWith =>
      __$SampleStateCopyWithImpl<_SampleState>(this, _$identity);
}

abstract class _SampleState implements SampleState {
  const factory _SampleState({int count}) = _$_SampleState;

  @override
  int get count;
  @override
  _$SampleStateCopyWith<_SampleState> get copyWith;
}