// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'state_notifier_sample_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SampleStateTearOff {
  const _$SampleStateTearOff();

  _SampleState call(
      {int count = 0,
      Hackathon hackathon,
      List<Participant> participants,
      List<Group> groups,
      Questionnaire questionnaire,
      Joined joined}) {
    return _SampleState(
      count: count,
      hackathon: hackathon,
      participants: participants,
      groups: groups,
      questionnaire: questionnaire,
      joined: joined,
    );
  }
}

// ignore: unused_element
const $SampleState = _$SampleStateTearOff();

mixin _$SampleState {
  int get count;
  Hackathon get hackathon;
  List<Participant> get participants;
  List<Group> get groups;
  Questionnaire get questionnaire;
  Joined get joined;

  $SampleStateCopyWith<SampleState> get copyWith;
}

abstract class $SampleStateCopyWith<$Res> {
  factory $SampleStateCopyWith(
          SampleState value, $Res Function(SampleState) then) =
      _$SampleStateCopyWithImpl<$Res>;
  $Res call(
      {int count,
      Hackathon hackathon,
      List<Participant> participants,
      List<Group> groups,
      Questionnaire questionnaire,
      Joined joined});

  $HackathonCopyWith<$Res> get hackathon;
  $QuestionnaireCopyWith<$Res> get questionnaire;
  $JoinedCopyWith<$Res> get joined;
}

class _$SampleStateCopyWithImpl<$Res> implements $SampleStateCopyWith<$Res> {
  _$SampleStateCopyWithImpl(this._value, this._then);

  final SampleState _value;
  // ignore: unused_field
  final $Res Function(SampleState) _then;

  @override
  $Res call({
    Object count = freezed,
    Object hackathon = freezed,
    Object participants = freezed,
    Object groups = freezed,
    Object questionnaire = freezed,
    Object joined = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed ? _value.count : count as int,
      hackathon:
          hackathon == freezed ? _value.hackathon : hackathon as Hackathon,
      participants: participants == freezed
          ? _value.participants
          : participants as List<Participant>,
      groups: groups == freezed ? _value.groups : groups as List<Group>,
      questionnaire: questionnaire == freezed
          ? _value.questionnaire
          : questionnaire as Questionnaire,
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
  $QuestionnaireCopyWith<$Res> get questionnaire {
    if (_value.questionnaire == null) {
      return null;
    }
    return $QuestionnaireCopyWith<$Res>(_value.questionnaire, (value) {
      return _then(_value.copyWith(questionnaire: value));
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

abstract class _$SampleStateCopyWith<$Res>
    implements $SampleStateCopyWith<$Res> {
  factory _$SampleStateCopyWith(
          _SampleState value, $Res Function(_SampleState) then) =
      __$SampleStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int count,
      Hackathon hackathon,
      List<Participant> participants,
      List<Group> groups,
      Questionnaire questionnaire,
      Joined joined});

  @override
  $HackathonCopyWith<$Res> get hackathon;
  @override
  $QuestionnaireCopyWith<$Res> get questionnaire;
  @override
  $JoinedCopyWith<$Res> get joined;
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
    Object hackathon = freezed,
    Object participants = freezed,
    Object groups = freezed,
    Object questionnaire = freezed,
    Object joined = freezed,
  }) {
    return _then(_SampleState(
      count: count == freezed ? _value.count : count as int,
      hackathon:
          hackathon == freezed ? _value.hackathon : hackathon as Hackathon,
      participants: participants == freezed
          ? _value.participants
          : participants as List<Participant>,
      groups: groups == freezed ? _value.groups : groups as List<Group>,
      questionnaire: questionnaire == freezed
          ? _value.questionnaire
          : questionnaire as Questionnaire,
      joined: joined == freezed ? _value.joined : joined as Joined,
    ));
  }
}

class _$_SampleState with DiagnosticableTreeMixin implements _SampleState {
  const _$_SampleState(
      {this.count = 0,
      this.hackathon,
      this.participants,
      this.groups,
      this.questionnaire,
      this.joined})
      : assert(count != null);

  @JsonKey(defaultValue: 0)
  @override
  final int count;
  @override
  final Hackathon hackathon;
  @override
  final List<Participant> participants;
  @override
  final List<Group> groups;
  @override
  final Questionnaire questionnaire;
  @override
  final Joined joined;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SampleState(count: $count, hackathon: $hackathon, participants: $participants, groups: $groups, questionnaire: $questionnaire, joined: $joined)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SampleState'))
      ..add(DiagnosticsProperty('count', count))
      ..add(DiagnosticsProperty('hackathon', hackathon))
      ..add(DiagnosticsProperty('participants', participants))
      ..add(DiagnosticsProperty('groups', groups))
      ..add(DiagnosticsProperty('questionnaire', questionnaire))
      ..add(DiagnosticsProperty('joined', joined));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SampleState &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.hackathon, hackathon) ||
                const DeepCollectionEquality()
                    .equals(other.hackathon, hackathon)) &&
            (identical(other.participants, participants) ||
                const DeepCollectionEquality()
                    .equals(other.participants, participants)) &&
            (identical(other.groups, groups) ||
                const DeepCollectionEquality().equals(other.groups, groups)) &&
            (identical(other.questionnaire, questionnaire) ||
                const DeepCollectionEquality()
                    .equals(other.questionnaire, questionnaire)) &&
            (identical(other.joined, joined) ||
                const DeepCollectionEquality().equals(other.joined, joined)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(hackathon) ^
      const DeepCollectionEquality().hash(participants) ^
      const DeepCollectionEquality().hash(groups) ^
      const DeepCollectionEquality().hash(questionnaire) ^
      const DeepCollectionEquality().hash(joined);

  @override
  _$SampleStateCopyWith<_SampleState> get copyWith =>
      __$SampleStateCopyWithImpl<_SampleState>(this, _$identity);
}

abstract class _SampleState implements SampleState {
  const factory _SampleState(
      {int count,
      Hackathon hackathon,
      List<Participant> participants,
      List<Group> groups,
      Questionnaire questionnaire,
      Joined joined}) = _$_SampleState;

  @override
  int get count;
  @override
  Hackathon get hackathon;
  @override
  List<Participant> get participants;
  @override
  List<Group> get groups;
  @override
  Questionnaire get questionnaire;
  @override
  Joined get joined;
  @override
  _$SampleStateCopyWith<_SampleState> get copyWith;
}
