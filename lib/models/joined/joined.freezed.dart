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
      @JsonKey(name: 'hackathon_ids')
          List<String> hackathonIds,
      @required
      @JsonKey(name: 'hackathon_icon_urls')
          List<String> hackathonIconUrls}) {
    return _Joined(
      id: id,
      userId: userId,
      hackathonIds: hackathonIds,
      hackathonIconUrls: hackathonIconUrls,
    );
  }
}

// ignore: unused_element
const $Joined = _$JoinedTearOff();

mixin _$Joined {
  String get id;
  @JsonKey(name: 'user_id')
  String get userId;
  @JsonKey(name: 'hackathon_ids')
  List<String> get hackathonIds;
  @JsonKey(name: 'hackathon_icon_urls')
  List<String> get hackathonIconUrls;

  Map<String, dynamic> toJson();
  $JoinedCopyWith<Joined> get copyWith;
}

abstract class $JoinedCopyWith<$Res> {
  factory $JoinedCopyWith(Joined value, $Res Function(Joined) then) =
      _$JoinedCopyWithImpl<$Res>;
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'hackathon_ids') List<String> hackathonIds,
      @JsonKey(name: 'hackathon_icon_urls') List<String> hackathonIconUrls});
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
    Object hackathonIds = freezed,
    Object hackathonIconUrls = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      userId: userId == freezed ? _value.userId : userId as String,
      hackathonIds: hackathonIds == freezed
          ? _value.hackathonIds
          : hackathonIds as List<String>,
      hackathonIconUrls: hackathonIconUrls == freezed
          ? _value.hackathonIconUrls
          : hackathonIconUrls as List<String>,
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
      @JsonKey(name: 'hackathon_ids') List<String> hackathonIds,
      @JsonKey(name: 'hackathon_icon_urls') List<String> hackathonIconUrls});
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
    Object hackathonIds = freezed,
    Object hackathonIconUrls = freezed,
  }) {
    return _then(_Joined(
      id: id == freezed ? _value.id : id as String,
      userId: userId == freezed ? _value.userId : userId as String,
      hackathonIds: hackathonIds == freezed
          ? _value.hackathonIds
          : hackathonIds as List<String>,
      hackathonIconUrls: hackathonIconUrls == freezed
          ? _value.hackathonIconUrls
          : hackathonIconUrls as List<String>,
    ));
  }
}

@JsonSerializable()
class _$_Joined with DiagnosticableTreeMixin implements _Joined {
  const _$_Joined(
      {@required this.id,
      @required @JsonKey(name: 'user_id') this.userId,
      @required @JsonKey(name: 'hackathon_ids') this.hackathonIds,
      @required @JsonKey(name: 'hackathon_icon_urls') this.hackathonIconUrls})
      : assert(id != null),
        assert(userId != null),
        assert(hackathonIds != null),
        assert(hackathonIconUrls != null);

  factory _$_Joined.fromJson(Map<String, dynamic> json) =>
      _$_$_JoinedFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'hackathon_ids')
  final List<String> hackathonIds;
  @override
  @JsonKey(name: 'hackathon_icon_urls')
  final List<String> hackathonIconUrls;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Joined(id: $id, userId: $userId, hackathonIds: $hackathonIds, hackathonIconUrls: $hackathonIconUrls)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Joined'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('hackathonIds', hackathonIds))
      ..add(DiagnosticsProperty('hackathonIconUrls', hackathonIconUrls));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Joined &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.hackathonIds, hackathonIds) ||
                const DeepCollectionEquality()
                    .equals(other.hackathonIds, hackathonIds)) &&
            (identical(other.hackathonIconUrls, hackathonIconUrls) ||
                const DeepCollectionEquality()
                    .equals(other.hackathonIconUrls, hackathonIconUrls)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(hackathonIds) ^
      const DeepCollectionEquality().hash(hackathonIconUrls);

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
      @JsonKey(name: 'hackathon_ids')
          List<String> hackathonIds,
      @required
      @JsonKey(name: 'hackathon_icon_urls')
          List<String> hackathonIconUrls}) = _$_Joined;

  factory _Joined.fromJson(Map<String, dynamic> json) = _$_Joined.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'hackathon_ids')
  List<String> get hackathonIds;
  @override
  @JsonKey(name: 'hackathon_icon_urls')
  List<String> get hackathonIconUrls;
  @override
  _$JoinedCopyWith<_Joined> get copyWith;
}
