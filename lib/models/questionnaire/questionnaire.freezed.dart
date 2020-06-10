// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'questionnaire.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Questionnaire _$QuestionnaireFromJson(Map<String, dynamic> json) {
  return _Questionnaire.fromJson(json);
}

class _$QuestionnaireTearOff {
  const _$QuestionnaireTearOff();

  _Questionnaire call(
      {@required
          String id,
      @required
          String title,
      @required
          String description,
      @required
      @JsonKey(name: 'schedule_candidate')
          List<dynamic> scheduleCandidate,
      @required
      @JsonKey(name: 'desired_occupation')
          List<dynamic> desiredOccupation,
      @required
      @JsonKey(name: 'working_days')
          int workingDays,
      @required
          String note}) {
    return _Questionnaire(
      id: id,
      title: title,
      description: description,
      scheduleCandidate: scheduleCandidate,
      desiredOccupation: desiredOccupation,
      workingDays: workingDays,
      note: note,
    );
  }
}

// ignore: unused_element
const $Questionnaire = _$QuestionnaireTearOff();

mixin _$Questionnaire {
  String get id;
  String get title;
  String get description;
  @JsonKey(name: 'schedule_candidate')
  List<dynamic> get scheduleCandidate;
  @JsonKey(name: 'desired_occupation')
  List<dynamic> get desiredOccupation;
  @JsonKey(name: 'working_days')
  int get workingDays;
  String get note;

  Map<String, dynamic> toJson();
  $QuestionnaireCopyWith<Questionnaire> get copyWith;
}

abstract class $QuestionnaireCopyWith<$Res> {
  factory $QuestionnaireCopyWith(
          Questionnaire value, $Res Function(Questionnaire) then) =
      _$QuestionnaireCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      String description,
      @JsonKey(name: 'schedule_candidate') List<dynamic> scheduleCandidate,
      @JsonKey(name: 'desired_occupation') List<dynamic> desiredOccupation,
      @JsonKey(name: 'working_days') int workingDays,
      String note});
}

class _$QuestionnaireCopyWithImpl<$Res>
    implements $QuestionnaireCopyWith<$Res> {
  _$QuestionnaireCopyWithImpl(this._value, this._then);

  final Questionnaire _value;
  // ignore: unused_field
  final $Res Function(Questionnaire) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object description = freezed,
    Object scheduleCandidate = freezed,
    Object desiredOccupation = freezed,
    Object workingDays = freezed,
    Object note = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      scheduleCandidate: scheduleCandidate == freezed
          ? _value.scheduleCandidate
          : scheduleCandidate as List<dynamic>,
      desiredOccupation: desiredOccupation == freezed
          ? _value.desiredOccupation
          : desiredOccupation as List<dynamic>,
      workingDays:
          workingDays == freezed ? _value.workingDays : workingDays as int,
      note: note == freezed ? _value.note : note as String,
    ));
  }
}

abstract class _$QuestionnaireCopyWith<$Res>
    implements $QuestionnaireCopyWith<$Res> {
  factory _$QuestionnaireCopyWith(
          _Questionnaire value, $Res Function(_Questionnaire) then) =
      __$QuestionnaireCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      String description,
      @JsonKey(name: 'schedule_candidate') List<dynamic> scheduleCandidate,
      @JsonKey(name: 'desired_occupation') List<dynamic> desiredOccupation,
      @JsonKey(name: 'working_days') int workingDays,
      String note});
}

class __$QuestionnaireCopyWithImpl<$Res>
    extends _$QuestionnaireCopyWithImpl<$Res>
    implements _$QuestionnaireCopyWith<$Res> {
  __$QuestionnaireCopyWithImpl(
      _Questionnaire _value, $Res Function(_Questionnaire) _then)
      : super(_value, (v) => _then(v as _Questionnaire));

  @override
  _Questionnaire get _value => super._value as _Questionnaire;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object description = freezed,
    Object scheduleCandidate = freezed,
    Object desiredOccupation = freezed,
    Object workingDays = freezed,
    Object note = freezed,
  }) {
    return _then(_Questionnaire(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      scheduleCandidate: scheduleCandidate == freezed
          ? _value.scheduleCandidate
          : scheduleCandidate as List<dynamic>,
      desiredOccupation: desiredOccupation == freezed
          ? _value.desiredOccupation
          : desiredOccupation as List<dynamic>,
      workingDays:
          workingDays == freezed ? _value.workingDays : workingDays as int,
      note: note == freezed ? _value.note : note as String,
    ));
  }
}

@JsonSerializable()
class _$_Questionnaire with DiagnosticableTreeMixin implements _Questionnaire {
  const _$_Questionnaire(
      {@required this.id,
      @required this.title,
      @required this.description,
      @required @JsonKey(name: 'schedule_candidate') this.scheduleCandidate,
      @required @JsonKey(name: 'desired_occupation') this.desiredOccupation,
      @required @JsonKey(name: 'working_days') this.workingDays,
      @required this.note})
      : assert(id != null),
        assert(title != null),
        assert(description != null),
        assert(scheduleCandidate != null),
        assert(desiredOccupation != null),
        assert(workingDays != null),
        assert(note != null);

  factory _$_Questionnaire.fromJson(Map<String, dynamic> json) =>
      _$_$_QuestionnaireFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  @JsonKey(name: 'schedule_candidate')
  final List<dynamic> scheduleCandidate;
  @override
  @JsonKey(name: 'desired_occupation')
  final List<dynamic> desiredOccupation;
  @override
  @JsonKey(name: 'working_days')
  final int workingDays;
  @override
  final String note;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Questionnaire(id: $id, title: $title, description: $description, scheduleCandidate: $scheduleCandidate, desiredOccupation: $desiredOccupation, workingDays: $workingDays, note: $note)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Questionnaire'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('scheduleCandidate', scheduleCandidate))
      ..add(DiagnosticsProperty('desiredOccupation', desiredOccupation))
      ..add(DiagnosticsProperty('workingDays', workingDays))
      ..add(DiagnosticsProperty('note', note));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Questionnaire &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.scheduleCandidate, scheduleCandidate) ||
                const DeepCollectionEquality()
                    .equals(other.scheduleCandidate, scheduleCandidate)) &&
            (identical(other.desiredOccupation, desiredOccupation) ||
                const DeepCollectionEquality()
                    .equals(other.desiredOccupation, desiredOccupation)) &&
            (identical(other.workingDays, workingDays) ||
                const DeepCollectionEquality()
                    .equals(other.workingDays, workingDays)) &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(scheduleCandidate) ^
      const DeepCollectionEquality().hash(desiredOccupation) ^
      const DeepCollectionEquality().hash(workingDays) ^
      const DeepCollectionEquality().hash(note);

  @override
  _$QuestionnaireCopyWith<_Questionnaire> get copyWith =>
      __$QuestionnaireCopyWithImpl<_Questionnaire>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_QuestionnaireToJson(this);
  }
}

abstract class _Questionnaire implements Questionnaire {
  const factory _Questionnaire(
      {@required
          String id,
      @required
          String title,
      @required
          String description,
      @required
      @JsonKey(name: 'schedule_candidate')
          List<dynamic> scheduleCandidate,
      @required
      @JsonKey(name: 'desired_occupation')
          List<dynamic> desiredOccupation,
      @required
      @JsonKey(name: 'working_days')
          int workingDays,
      @required
          String note}) = _$_Questionnaire;

  factory _Questionnaire.fromJson(Map<String, dynamic> json) =
      _$_Questionnaire.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(name: 'schedule_candidate')
  List<dynamic> get scheduleCandidate;
  @override
  @JsonKey(name: 'desired_occupation')
  List<dynamic> get desiredOccupation;
  @override
  @JsonKey(name: 'working_days')
  int get workingDays;
  @override
  String get note;
  @override
  _$QuestionnaireCopyWith<_Questionnaire> get copyWith;
}
