// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'joined.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Joined _$JoinedFromJson(Map<String, dynamic> json) {
  return _Joined.fromJson(json);
}

class _$JoinedTearOff {
  const _$JoinedTearOff();

  _Joined call(
      {@required
          String id,
      @required
      @JsonKey(name: 'user_id')
          String userId,
      @required
      @JsonKey(name: 'hackathon_id')
          List<String> hackathonId,
      @required
      @JsonKey(name: 'hackathon_icon_url')
          List<String> hackathonIconUrl}) {
    return _Joined(
      id: id,
      userId: userId,
      hackathonId: hackathonId,
      hackathonIconUrl: hackathonIconUrl,
    );
  }
}

// ignore: unused_element
const $Joined = _$JoinedTearOff();

mixin _$Joined {
  String get id;
  @JsonKey(name: 'user_id')
  String get userId;
  @JsonKey(name: 'hackathon_id')
  List<String> get hackathonId;
  @JsonKey(name: 'hackathon_icon_url')
  List<String> get hackathonIconUrl;

  Map<String, dynamic> toJson();
  $JoinedCopyWith<Joined> get copyWith;
}

abstract class $JoinedCopyWith<$Res> {
  factory $JoinedCopyWith(Joined value, $Res Function(Joined) then) =
      _$JoinedCopyWithImpl<$Res>;
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'hackathon_id') List<String> hackathonId,
      @JsonKey(name: 'hackathon_icon_url') List<String> hackathonIconUrl});
}

class _$JoinedCopyWithImpl<$Res> implements $JoinedCopyWith<$Res> {
  _$JoinedCopyWithImpl(this._value, this._then);

  final Joined _value;
  // ignore: unused_field
  final $Res Function(Joined) _then;

  @override
  $Res call({
    Object id = freezed,
    Object userId = freezed,
    Object hackathonId = freezed,
    Object hackathonIconUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      userId: userId == freezed ? _value.userId : userId as String,
      hackathonId: hackathonId == freezed
          ? _value.hackathonId
          : hackathonId as List<String>,
      hackathonIconUrl: hackathonIconUrl == freezed
          ? _value.hackathonIconUrl
          : hackathonIconUrl as List<String>,
    ));
  }
}

abstract class _$JoinedCopyWith<$Res> implements $JoinedCopyWith<$Res> {
  factory _$JoinedCopyWith(_Joined value, $Res Function(_Joined) then) =
      __$JoinedCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'hackathon_id') List<String> hackathonId,
      @JsonKey(name: 'hackathon_icon_url') List<String> hackathonIconUrl});
}

class __$JoinedCopyWithImpl<$Res> extends _$JoinedCopyWithImpl<$Res>
    implements _$JoinedCopyWith<$Res> {
  __$JoinedCopyWithImpl(_Joined _value, $Res Function(_Joined) _then)
      : super(_value, (v) => _then(v as _Joined));

  @override
  _Joined get _value => super._value as _Joined;

  @override
  $Res call({
    Object id = freezed,
    Object userId = freezed,
    Object hackathonId = freezed,
    Object hackathonIconUrl = freezed,
  }) {
    return _then(_Joined(
      id: id == freezed ? _value.id : id as String,
      userId: userId == freezed ? _value.userId : userId as String,
      hackathonId: hackathonId == freezed
          ? _value.hackathonId
          : hackathonId as List<String>,
      hackathonIconUrl: hackathonIconUrl == freezed
          ? _value.hackathonIconUrl
          : hackathonIconUrl as List<String>,
    ));
  }
}

@JsonSerializable()
class _$_Joined with DiagnosticableTreeMixin implements _Joined {
  const _$_Joined(
      {@required this.id,
      @required @JsonKey(name: 'user_id') this.userId,
      @required @JsonKey(name: 'hackathon_id') this.hackathonId,
      @required @JsonKey(name: 'hackathon_icon_url') this.hackathonIconUrl})
      : assert(id != null),
        assert(userId != null),
        assert(hackathonId != null),
        assert(hackathonIconUrl != null);

  factory _$_Joined.fromJson(Map<String, dynamic> json) =>
      _$_$_JoinedFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'hackathon_id')
  final List<String> hackathonId;
  @override
  @JsonKey(name: 'hackathon_icon_url')
  final List<String> hackathonIconUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Joined(id: $id, userId: $userId, hackathonId: $hackathonId, hackathonIconUrl: $hackathonIconUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Joined'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('hackathonId', hackathonId))
      ..add(DiagnosticsProperty('hackathonIconUrl', hackathonIconUrl));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Joined &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.hackathonId, hackathonId) ||
                const DeepCollectionEquality()
                    .equals(other.hackathonId, hackathonId)) &&
            (identical(other.hackathonIconUrl, hackathonIconUrl) ||
                const DeepCollectionEquality()
                    .equals(other.hackathonIconUrl, hackathonIconUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(hackathonId) ^
      const DeepCollectionEquality().hash(hackathonIconUrl);

  @override
  _$JoinedCopyWith<_Joined> get copyWith =>
      __$JoinedCopyWithImpl<_Joined>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_JoinedToJson(this);
  }
}

abstract class _Joined implements Joined {
  const factory _Joined(
      {@required
          String id,
      @required
      @JsonKey(name: 'user_id')
          String userId,
      @required
      @JsonKey(name: 'hackathon_id')
          List<String> hackathonId,
      @required
      @JsonKey(name: 'hackathon_icon_url')
          List<String> hackathonIconUrl}) = _$_Joined;

  factory _Joined.fromJson(Map<String, dynamic> json) = _$_Joined.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'hackathon_id')
  List<String> get hackathonId;
  @override
  @JsonKey(name: 'hackathon_icon_url')
  List<String> get hackathonIconUrl;
  @override
  _$JoinedCopyWith<_Joined> get copyWith;
}
