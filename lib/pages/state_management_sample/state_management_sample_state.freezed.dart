// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'state_management_sample_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$StateManagementSampleStateTearOff {
  const _$StateManagementSampleStateTearOff();

  _StateManagementSampleState call(
      {NotifierState notifierState = NotifierState.initial}) {
    return _StateManagementSampleState(
      notifierState: notifierState,
    );
  }
}

// ignore: unused_element
const $StateManagementSampleState = _$StateManagementSampleStateTearOff();

mixin _$StateManagementSampleState {
  NotifierState get notifierState;

  $StateManagementSampleStateCopyWith<StateManagementSampleState> get copyWith;
}

abstract class $StateManagementSampleStateCopyWith<$Res> {
  factory $StateManagementSampleStateCopyWith(StateManagementSampleState value,
          $Res Function(StateManagementSampleState) then) =
      _$StateManagementSampleStateCopyWithImpl<$Res>;
  $Res call({NotifierState notifierState});
}

class _$StateManagementSampleStateCopyWithImpl<$Res>
    implements $StateManagementSampleStateCopyWith<$Res> {
  _$StateManagementSampleStateCopyWithImpl(this._value, this._then);

  final StateManagementSampleState _value;
  // ignore: unused_field
  final $Res Function(StateManagementSampleState) _then;

  @override
  $Res call({
    Object notifierState = freezed,
  }) {
    return _then(_value.copyWith(
      notifierState: notifierState == freezed
          ? _value.notifierState
          : notifierState as NotifierState,
    ));
  }
}

abstract class _$StateManagementSampleStateCopyWith<$Res>
    implements $StateManagementSampleStateCopyWith<$Res> {
  factory _$StateManagementSampleStateCopyWith(
          _StateManagementSampleState value,
          $Res Function(_StateManagementSampleState) then) =
      __$StateManagementSampleStateCopyWithImpl<$Res>;
  @override
  $Res call({NotifierState notifierState});
}

class __$StateManagementSampleStateCopyWithImpl<$Res>
    extends _$StateManagementSampleStateCopyWithImpl<$Res>
    implements _$StateManagementSampleStateCopyWith<$Res> {
  __$StateManagementSampleStateCopyWithImpl(_StateManagementSampleState _value,
      $Res Function(_StateManagementSampleState) _then)
      : super(_value, (v) => _then(v as _StateManagementSampleState));

  @override
  _StateManagementSampleState get _value =>
      super._value as _StateManagementSampleState;

  @override
  $Res call({
    Object notifierState = freezed,
  }) {
    return _then(_StateManagementSampleState(
      notifierState: notifierState == freezed
          ? _value.notifierState
          : notifierState as NotifierState,
    ));
  }
}

class _$_StateManagementSampleState
    with DiagnosticableTreeMixin
    implements _StateManagementSampleState {
  const _$_StateManagementSampleState(
      {this.notifierState = NotifierState.initial})
      : assert(notifierState != null);

  @JsonKey(defaultValue: NotifierState.initial)
  @override
  final NotifierState notifierState;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StateManagementSampleState(notifierState: $notifierState)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StateManagementSampleState'))
      ..add(DiagnosticsProperty('notifierState', notifierState));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StateManagementSampleState &&
            (identical(other.notifierState, notifierState) ||
                const DeepCollectionEquality()
                    .equals(other.notifierState, notifierState)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(notifierState);

  @override
  _$StateManagementSampleStateCopyWith<_StateManagementSampleState>
      get copyWith => __$StateManagementSampleStateCopyWithImpl<
          _StateManagementSampleState>(this, _$identity);
}

abstract class _StateManagementSampleState
    implements StateManagementSampleState {
  const factory _StateManagementSampleState({NotifierState notifierState}) =
      _$_StateManagementSampleState;

  @override
  NotifierState get notifierState;
  @override
  _$StateManagementSampleStateCopyWith<_StateManagementSampleState>
      get copyWith;
}
