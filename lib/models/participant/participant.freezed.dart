// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'participant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Participant _$ParticipantFromJson(Map<String, dynamic> json) {
  return _Participant.fromJson(json);
}

class _$ParticipantTearOff {
  const _$ParticipantTearOff();

  _Participant call(
      {@required
          String id,
      @required
      @UserConverter()
          User user,
      @required
      @JsonKey(name: 'desired_occupations')
      @TechnicalStackConverter()
          List<TechnicalStack> desiredOccupations,
      @required
      @JsonKey(name: 'working_days')
          int workingDays,
      @required
          String note,
      @required
      @JsonKey(name: 'is_admin')
          bool isAdmin}) {
    return _Participant(
      id: id,
      user: user,
      desiredOccupations: desiredOccupations,
      workingDays: workingDays,
      note: note,
      isAdmin: isAdmin,
    );
  }
}

// ignore: unused_element
const $Participant = _$ParticipantTearOff();

mixin _$Participant {
  String get id;
  @UserConverter()
  User get user;
  @JsonKey(name: 'desired_occupations')
  @TechnicalStackConverter()
  List<TechnicalStack> get desiredOccupations;
  @JsonKey(name: 'working_days')
  int get workingDays;
  String get note;
  @JsonKey(name: 'is_admin')
  bool get isAdmin;

  Map<String, dynamic> toJson();
  $ParticipantCopyWith<Participant> get copyWith;
}

abstract class $ParticipantCopyWith<$Res> {
  factory $ParticipantCopyWith(
          Participant value, $Res Function(Participant) then) =
      _$ParticipantCopyWithImpl<$Res>;
  $Res call(
      {String id,
      @UserConverter()
          User user,
      @JsonKey(name: 'desired_occupations')
      @TechnicalStackConverter()
          List<TechnicalStack> desiredOccupations,
      @JsonKey(name: 'working_days')
          int workingDays,
      String note,
      @JsonKey(name: 'is_admin')
          bool isAdmin});

  $UserCopyWith<$Res> get user;
}

class _$ParticipantCopyWithImpl<$Res> implements $ParticipantCopyWith<$Res> {
  _$ParticipantCopyWithImpl(this._value, this._then);

  final Participant _value;
  // ignore: unused_field
  final $Res Function(Participant) _then;

  @override
  $Res call({
    Object id = freezed,
    Object user = freezed,
    Object desiredOccupations = freezed,
    Object workingDays = freezed,
    Object note = freezed,
    Object isAdmin = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      user: user == freezed ? _value.user : user as User,
      desiredOccupations: desiredOccupations == freezed
          ? _value.desiredOccupations
          : desiredOccupations as List<TechnicalStack>,
      workingDays:
          workingDays == freezed ? _value.workingDays : workingDays as int,
      note: note == freezed ? _value.note : note as String,
      isAdmin: isAdmin == freezed ? _value.isAdmin : isAdmin as bool,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

abstract class _$ParticipantCopyWith<$Res>
    implements $ParticipantCopyWith<$Res> {
  factory _$ParticipantCopyWith(
          _Participant value, $Res Function(_Participant) then) =
      __$ParticipantCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      @UserConverter()
          User user,
      @JsonKey(name: 'desired_occupations')
      @TechnicalStackConverter()
          List<TechnicalStack> desiredOccupations,
      @JsonKey(name: 'working_days')
          int workingDays,
      String note,
      @JsonKey(name: 'is_admin')
          bool isAdmin});

  @override
  $UserCopyWith<$Res> get user;
}

class __$ParticipantCopyWithImpl<$Res> extends _$ParticipantCopyWithImpl<$Res>
    implements _$ParticipantCopyWith<$Res> {
  __$ParticipantCopyWithImpl(
      _Participant _value, $Res Function(_Participant) _then)
      : super(_value, (v) => _then(v as _Participant));

  @override
  _Participant get _value => super._value as _Participant;

  @override
  $Res call({
    Object id = freezed,
    Object user = freezed,
    Object desiredOccupations = freezed,
    Object workingDays = freezed,
    Object note = freezed,
    Object isAdmin = freezed,
  }) {
    return _then(_Participant(
      id: id == freezed ? _value.id : id as String,
      user: user == freezed ? _value.user : user as User,
      desiredOccupations: desiredOccupations == freezed
          ? _value.desiredOccupations
          : desiredOccupations as List<TechnicalStack>,
      workingDays:
          workingDays == freezed ? _value.workingDays : workingDays as int,
      note: note == freezed ? _value.note : note as String,
      isAdmin: isAdmin == freezed ? _value.isAdmin : isAdmin as bool,
    ));
  }
}

@JsonSerializable()
class _$_Participant with DiagnosticableTreeMixin implements _Participant {
  const _$_Participant(
      {@required
          this.id,
      @required
      @UserConverter()
          this.user,
      @required
      @JsonKey(name: 'desired_occupations')
      @TechnicalStackConverter()
          this.desiredOccupations,
      @required
      @JsonKey(name: 'working_days')
          this.workingDays,
      @required
          this.note,
      @required
      @JsonKey(name: 'is_admin')
          this.isAdmin})
      : assert(id != null),
        assert(user != null),
        assert(desiredOccupations != null),
        assert(workingDays != null),
        assert(note != null),
        assert(isAdmin != null);

  factory _$_Participant.fromJson(Map<String, dynamic> json) =>
      _$_$_ParticipantFromJson(json);

  @override
  final String id;
  @override
  @UserConverter()
  final User user;
  @override
  @JsonKey(name: 'desired_occupations')
  @TechnicalStackConverter()
  final List<TechnicalStack> desiredOccupations;
  @override
  @JsonKey(name: 'working_days')
  final int workingDays;
  @override
  final String note;
  @override
  @JsonKey(name: 'is_admin')
  final bool isAdmin;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Participant(id: $id, user: $user, desiredOccupations: $desiredOccupations, workingDays: $workingDays, note: $note, isAdmin: $isAdmin)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Participant'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('desiredOccupations', desiredOccupations))
      ..add(DiagnosticsProperty('workingDays', workingDays))
      ..add(DiagnosticsProperty('note', note))
      ..add(DiagnosticsProperty('isAdmin', isAdmin));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Participant &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.desiredOccupations, desiredOccupations) ||
                const DeepCollectionEquality()
                    .equals(other.desiredOccupations, desiredOccupations)) &&
            (identical(other.workingDays, workingDays) ||
                const DeepCollectionEquality()
                    .equals(other.workingDays, workingDays)) &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)) &&
            (identical(other.isAdmin, isAdmin) ||
                const DeepCollectionEquality().equals(other.isAdmin, isAdmin)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(desiredOccupations) ^
      const DeepCollectionEquality().hash(workingDays) ^
      const DeepCollectionEquality().hash(note) ^
      const DeepCollectionEquality().hash(isAdmin);

  @override
  _$ParticipantCopyWith<_Participant> get copyWith =>
      __$ParticipantCopyWithImpl<_Participant>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ParticipantToJson(this);
  }
}

abstract class _Participant implements Participant {
  const factory _Participant(
      {@required
          String id,
      @required
      @UserConverter()
          User user,
      @required
      @JsonKey(name: 'desired_occupations')
      @TechnicalStackConverter()
          List<TechnicalStack> desiredOccupations,
      @required
      @JsonKey(name: 'working_days')
          int workingDays,
      @required
          String note,
      @required
      @JsonKey(name: 'is_admin')
          bool isAdmin}) = _$_Participant;

  factory _Participant.fromJson(Map<String, dynamic> json) =
      _$_Participant.fromJson;

  @override
  String get id;
  @override
  @UserConverter()
  User get user;
  @override
  @JsonKey(name: 'desired_occupations')
  @TechnicalStackConverter()
  List<TechnicalStack> get desiredOccupations;
  @override
  @JsonKey(name: 'working_days')
  int get workingDays;
  @override
  String get note;
  @override
  @JsonKey(name: 'is_admin')
  bool get isAdmin;
  @override
  _$ParticipantCopyWith<_Participant> get copyWith;
}
