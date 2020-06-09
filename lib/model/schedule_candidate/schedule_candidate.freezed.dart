// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'schedule_candidate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ScheduleCandidate _$ScheduleCandidateFromJson(Map<String, dynamic> json) {
  return _ScheduleCandidate.fromJson(json);
}

class _$ScheduleCandidateTearOff {
  const _$ScheduleCandidateTearOff();

  _ScheduleCandidate call({@required String id}) {
    return _ScheduleCandidate(
      id: id,
    );
  }
}

// ignore: unused_element
const $ScheduleCandidate = _$ScheduleCandidateTearOff();

mixin _$ScheduleCandidate {
  String get id;

  Map<String, dynamic> toJson();
  $ScheduleCandidateCopyWith<ScheduleCandidate> get copyWith;
}

abstract class $ScheduleCandidateCopyWith<$Res> {
  factory $ScheduleCandidateCopyWith(
          ScheduleCandidate value, $Res Function(ScheduleCandidate) then) =
      _$ScheduleCandidateCopyWithImpl<$Res>;
  $Res call({String id});
}

class _$ScheduleCandidateCopyWithImpl<$Res>
    implements $ScheduleCandidateCopyWith<$Res> {
  _$ScheduleCandidateCopyWithImpl(this._value, this._then);

  final ScheduleCandidate _value;
  // ignore: unused_field
  final $Res Function(ScheduleCandidate) _then;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

abstract class _$ScheduleCandidateCopyWith<$Res>
    implements $ScheduleCandidateCopyWith<$Res> {
  factory _$ScheduleCandidateCopyWith(
          _ScheduleCandidate value, $Res Function(_ScheduleCandidate) then) =
      __$ScheduleCandidateCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

class __$ScheduleCandidateCopyWithImpl<$Res>
    extends _$ScheduleCandidateCopyWithImpl<$Res>
    implements _$ScheduleCandidateCopyWith<$Res> {
  __$ScheduleCandidateCopyWithImpl(
      _ScheduleCandidate _value, $Res Function(_ScheduleCandidate) _then)
      : super(_value, (v) => _then(v as _ScheduleCandidate));

  @override
  _ScheduleCandidate get _value => super._value as _ScheduleCandidate;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(_ScheduleCandidate(
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

@JsonSerializable()
class _$_ScheduleCandidate
    with DiagnosticableTreeMixin
    implements _ScheduleCandidate {
  const _$_ScheduleCandidate({@required this.id}) : assert(id != null);

  factory _$_ScheduleCandidate.fromJson(Map<String, dynamic> json) =>
      _$_$_ScheduleCandidateFromJson(json);

  @override
  final String id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ScheduleCandidate(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ScheduleCandidate'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ScheduleCandidate &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  _$ScheduleCandidateCopyWith<_ScheduleCandidate> get copyWith =>
      __$ScheduleCandidateCopyWithImpl<_ScheduleCandidate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ScheduleCandidateToJson(this);
  }
}

abstract class _ScheduleCandidate implements ScheduleCandidate {
  const factory _ScheduleCandidate({@required String id}) =
      _$_ScheduleCandidate;

  factory _ScheduleCandidate.fromJson(Map<String, dynamic> json) =
      _$_ScheduleCandidate.fromJson;

  @override
  String get id;
  @override
  _$ScheduleCandidateCopyWith<_ScheduleCandidate> get copyWith;
}
