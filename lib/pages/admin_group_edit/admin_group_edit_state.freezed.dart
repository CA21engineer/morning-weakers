// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'admin_group_edit_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AdminGroupEditStateTearOff {
  const _$AdminGroupEditStateTearOff();

  _AdminGroupEditState call(
      {NotifierState notifierState = NotifierState.initial,
      List<Group> groups = const <Group>[]}) {
    return _AdminGroupEditState(
      notifierState: notifierState,
      groups: groups,
    );
  }
}

// ignore: unused_element
const $AdminGroupEditState = _$AdminGroupEditStateTearOff();

mixin _$AdminGroupEditState {
  NotifierState get notifierState;
  List<Group> get groups;

  $AdminGroupEditStateCopyWith<AdminGroupEditState> get copyWith;
}

abstract class $AdminGroupEditStateCopyWith<$Res> {
  factory $AdminGroupEditStateCopyWith(
          AdminGroupEditState value, $Res Function(AdminGroupEditState) then) =
      _$AdminGroupEditStateCopyWithImpl<$Res>;
  $Res call({NotifierState notifierState, List<Group> groups});
}

class _$AdminGroupEditStateCopyWithImpl<$Res>
    implements $AdminGroupEditStateCopyWith<$Res> {
  _$AdminGroupEditStateCopyWithImpl(this._value, this._then);

  final AdminGroupEditState _value;
  // ignore: unused_field
  final $Res Function(AdminGroupEditState) _then;

  @override
  $Res call({
    Object notifierState = freezed,
    Object groups = freezed,
  }) {
    return _then(_value.copyWith(
      notifierState: notifierState == freezed
          ? _value.notifierState
          : notifierState as NotifierState,
      groups: groups == freezed ? _value.groups : groups as List<Group>,
    ));
  }
}

abstract class _$AdminGroupEditStateCopyWith<$Res>
    implements $AdminGroupEditStateCopyWith<$Res> {
  factory _$AdminGroupEditStateCopyWith(_AdminGroupEditState value,
          $Res Function(_AdminGroupEditState) then) =
      __$AdminGroupEditStateCopyWithImpl<$Res>;
  @override
  $Res call({NotifierState notifierState, List<Group> groups});
}

class __$AdminGroupEditStateCopyWithImpl<$Res>
    extends _$AdminGroupEditStateCopyWithImpl<$Res>
    implements _$AdminGroupEditStateCopyWith<$Res> {
  __$AdminGroupEditStateCopyWithImpl(
      _AdminGroupEditState _value, $Res Function(_AdminGroupEditState) _then)
      : super(_value, (v) => _then(v as _AdminGroupEditState));

  @override
  _AdminGroupEditState get _value => super._value as _AdminGroupEditState;

  @override
  $Res call({
    Object notifierState = freezed,
    Object groups = freezed,
  }) {
    return _then(_AdminGroupEditState(
      notifierState: notifierState == freezed
          ? _value.notifierState
          : notifierState as NotifierState,
      groups: groups == freezed ? _value.groups : groups as List<Group>,
    ));
  }
}

class _$_AdminGroupEditState
    with DiagnosticableTreeMixin
    implements _AdminGroupEditState {
  const _$_AdminGroupEditState(
      {this.notifierState = NotifierState.initial,
      this.groups = const <Group>[]})
      : assert(notifierState != null),
        assert(groups != null);

  @JsonKey(defaultValue: NotifierState.initial)
  @override
  final NotifierState notifierState;
  @JsonKey(defaultValue: const <Group>[])
  @override
  final List<Group> groups;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AdminGroupEditState(notifierState: $notifierState, groups: $groups)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AdminGroupEditState'))
      ..add(DiagnosticsProperty('notifierState', notifierState))
      ..add(DiagnosticsProperty('groups', groups));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AdminGroupEditState &&
            (identical(other.notifierState, notifierState) ||
                const DeepCollectionEquality()
                    .equals(other.notifierState, notifierState)) &&
            (identical(other.groups, groups) ||
                const DeepCollectionEquality().equals(other.groups, groups)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(notifierState) ^
      const DeepCollectionEquality().hash(groups);

  @override
  _$AdminGroupEditStateCopyWith<_AdminGroupEditState> get copyWith =>
      __$AdminGroupEditStateCopyWithImpl<_AdminGroupEditState>(
          this, _$identity);
}

abstract class _AdminGroupEditState implements AdminGroupEditState {
  const factory _AdminGroupEditState(
      {NotifierState notifierState,
      List<Group> groups}) = _$_AdminGroupEditState;

  @override
  NotifierState get notifierState;
  @override
  List<Group> get groups;
  @override
  _$AdminGroupEditStateCopyWith<_AdminGroupEditState> get copyWith;
}
