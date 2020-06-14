// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'input_participant_info_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
InputParticipantInfoState _$InputParticipantInfoStateFromJson(
    Map<String, dynamic> json) {
  return _InputParticipantInfoState.fromJson(json);
}

class _$InputParticipantInfoStateTearOff {
  const _$InputParticipantInfoStateTearOff();

  _InputParticipantInfoState call(
      {@JsonKey(name: 'desired_occupations')
          List<TechnicalStack> desiredOccupations,
      @JsonKey(name: 'working_days')
          int workingDays,
      String note,
      @required
      @JsonKey(name: 'schedule_candidate')
          List<ScheduleCandidate> scheduleCandidates}) {
    return _InputParticipantInfoState(
      desiredOccupations: desiredOccupations,
      workingDays: workingDays,
      note: note,
      scheduleCandidates: scheduleCandidates,
    );
  }
}

// ignore: unused_element
const $InputParticipantInfoState = _$InputParticipantInfoStateTearOff();

mixin _$InputParticipantInfoState {
  @JsonKey(name: 'desired_occupations')
  List<TechnicalStack> get desiredOccupations;
  @JsonKey(name: 'working_days')
  int get workingDays;
  String get note;
  @JsonKey(name: 'schedule_candidate')
  List<ScheduleCandidate> get scheduleCandidates;

  Map<String, dynamic> toJson();
  $InputParticipantInfoStateCopyWith<InputParticipantInfoState> get copyWith;
}

abstract class $InputParticipantInfoStateCopyWith<$Res> {
  factory $InputParticipantInfoStateCopyWith(InputParticipantInfoState value,
          $Res Function(InputParticipantInfoState) then) =
      _$InputParticipantInfoStateCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'desired_occupations')
          List<TechnicalStack> desiredOccupations,
      @JsonKey(name: 'working_days')
          int workingDays,
      String note,
      @JsonKey(name: 'schedule_candidate')
          List<ScheduleCandidate> scheduleCandidates});
}

class _$InputParticipantInfoStateCopyWithImpl<$Res>
    implements $InputParticipantInfoStateCopyWith<$Res> {
  _$InputParticipantInfoStateCopyWithImpl(this._value, this._then);

  final InputParticipantInfoState _value;
  // ignore: unused_field
  final $Res Function(InputParticipantInfoState) _then;

  @override
  $Res call({
    Object desiredOccupations = freezed,
    Object workingDays = freezed,
    Object note = freezed,
    Object scheduleCandidates = freezed,
  }) {
    return _then(_value.copyWith(
      desiredOccupations: desiredOccupations == freezed
          ? _value.desiredOccupations
          : desiredOccupations as List<TechnicalStack>,
      workingDays:
          workingDays == freezed ? _value.workingDays : workingDays as int,
      note: note == freezed ? _value.note : note as String,
      scheduleCandidates: scheduleCandidates == freezed
          ? _value.scheduleCandidates
          : scheduleCandidates as List<ScheduleCandidate>,
    ));
  }
}

abstract class _$InputParticipantInfoStateCopyWith<$Res>
    implements $InputParticipantInfoStateCopyWith<$Res> {
  factory _$InputParticipantInfoStateCopyWith(_InputParticipantInfoState value,
          $Res Function(_InputParticipantInfoState) then) =
      __$InputParticipantInfoStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'desired_occupations')
          List<TechnicalStack> desiredOccupations,
      @JsonKey(name: 'working_days')
          int workingDays,
      String note,
      @JsonKey(name: 'schedule_candidate')
          List<ScheduleCandidate> scheduleCandidates});
}

class __$InputParticipantInfoStateCopyWithImpl<$Res>
    extends _$InputParticipantInfoStateCopyWithImpl<$Res>
    implements _$InputParticipantInfoStateCopyWith<$Res> {
  __$InputParticipantInfoStateCopyWithImpl(_InputParticipantInfoState _value,
      $Res Function(_InputParticipantInfoState) _then)
      : super(_value, (v) => _then(v as _InputParticipantInfoState));

  @override
  _InputParticipantInfoState get _value =>
      super._value as _InputParticipantInfoState;

  @override
  $Res call({
    Object desiredOccupations = freezed,
    Object workingDays = freezed,
    Object note = freezed,
    Object scheduleCandidates = freezed,
  }) {
    return _then(_InputParticipantInfoState(
      desiredOccupations: desiredOccupations == freezed
          ? _value.desiredOccupations
          : desiredOccupations as List<TechnicalStack>,
      workingDays:
          workingDays == freezed ? _value.workingDays : workingDays as int,
      note: note == freezed ? _value.note : note as String,
      scheduleCandidates: scheduleCandidates == freezed
          ? _value.scheduleCandidates
          : scheduleCandidates as List<ScheduleCandidate>,
    ));
  }
}

@JsonSerializable()
class _$_InputParticipantInfoState
    with DiagnosticableTreeMixin
    implements _InputParticipantInfoState {
  const _$_InputParticipantInfoState(
      {@JsonKey(name: 'desired_occupations') this.desiredOccupations,
      @JsonKey(name: 'working_days') this.workingDays,
      this.note,
      @required @JsonKey(name: 'schedule_candidate') this.scheduleCandidates})
      : assert(scheduleCandidates != null);

  factory _$_InputParticipantInfoState.fromJson(Map<String, dynamic> json) =>
      _$_$_InputParticipantInfoStateFromJson(json);

  @override
  @JsonKey(name: 'desired_occupations')
  final List<TechnicalStack> desiredOccupations;
  @override
  @JsonKey(name: 'working_days')
  final int workingDays;
  @override
  final String note;
  @override
  @JsonKey(name: 'schedule_candidate')
  final List<ScheduleCandidate> scheduleCandidates;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InputParticipantInfoState(desiredOccupations: $desiredOccupations, workingDays: $workingDays, note: $note, scheduleCandidates: $scheduleCandidates)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InputParticipantInfoState'))
      ..add(DiagnosticsProperty('desiredOccupations', desiredOccupations))
      ..add(DiagnosticsProperty('workingDays', workingDays))
      ..add(DiagnosticsProperty('note', note))
      ..add(DiagnosticsProperty('scheduleCandidates', scheduleCandidates));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InputParticipantInfoState &&
            (identical(other.desiredOccupations, desiredOccupations) ||
                const DeepCollectionEquality()
                    .equals(other.desiredOccupations, desiredOccupations)) &&
            (identical(other.workingDays, workingDays) ||
                const DeepCollectionEquality()
                    .equals(other.workingDays, workingDays)) &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)) &&
            (identical(other.scheduleCandidates, scheduleCandidates) ||
                const DeepCollectionEquality()
                    .equals(other.scheduleCandidates, scheduleCandidates)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(desiredOccupations) ^
      const DeepCollectionEquality().hash(workingDays) ^
      const DeepCollectionEquality().hash(note) ^
      const DeepCollectionEquality().hash(scheduleCandidates);

  @override
  _$InputParticipantInfoStateCopyWith<_InputParticipantInfoState>
      get copyWith =>
          __$InputParticipantInfoStateCopyWithImpl<_InputParticipantInfoState>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_InputParticipantInfoStateToJson(this);
  }
}

abstract class _InputParticipantInfoState implements InputParticipantInfoState {
  const factory _InputParticipantInfoState(
          {@JsonKey(name: 'desired_occupations')
              List<TechnicalStack> desiredOccupations,
          @JsonKey(name: 'working_days')
              int workingDays,
          String note,
          @required
          @JsonKey(name: 'schedule_candidate')
              List<ScheduleCandidate> scheduleCandidates}) =
      _$_InputParticipantInfoState;

  factory _InputParticipantInfoState.fromJson(Map<String, dynamic> json) =
      _$_InputParticipantInfoState.fromJson;

  @override
  @JsonKey(name: 'desired_occupations')
  List<TechnicalStack> get desiredOccupations;
  @override
  @JsonKey(name: 'working_days')
  int get workingDays;
  @override
  String get note;
  @override
  @JsonKey(name: 'schedule_candidate')
  List<ScheduleCandidate> get scheduleCandidates;
  @override
  _$InputParticipantInfoStateCopyWith<_InputParticipantInfoState> get copyWith;
}
