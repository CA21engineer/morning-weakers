// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'read.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Read _$ReadFromJson(Map<String, dynamic> json) {
  return _Read.fromJson(json);
}

class _$ReadTearOff {
  const _$ReadTearOff();

  _Read call(
      {@required String id,
      @required @JsonKey(name: 'user_id') String userId,
      @required @JsonKey(name: 'notification_id') String notificationId,
      @required @JsonKey(name: 'is_read') bool isRead}) {
    return _Read(
      id: id,
      userId: userId,
      notificationId: notificationId,
      isRead: isRead,
    );
  }
}

// ignore: unused_element
const $Read = _$ReadTearOff();

mixin _$Read {
  String get id;
  @JsonKey(name: 'user_id')
  String get userId;
  @JsonKey(name: 'notification_id')
  String get notificationId;
  @JsonKey(name: 'is_read')
  bool get isRead;

  Map<String, dynamic> toJson();
  $ReadCopyWith<Read> get copyWith;
}

abstract class $ReadCopyWith<$Res> {
  factory $ReadCopyWith(Read value, $Res Function(Read) then) =
      _$ReadCopyWithImpl<$Res>;
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'notification_id') String notificationId,
      @JsonKey(name: 'is_read') bool isRead});
}

class _$ReadCopyWithImpl<$Res> implements $ReadCopyWith<$Res> {
  _$ReadCopyWithImpl(this._value, this._then);

  final Read _value;
  // ignore: unused_field
  final $Res Function(Read) _then;

  @override
  $Res call({
    Object id = freezed,
    Object userId = freezed,
    Object notificationId = freezed,
    Object isRead = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      userId: userId == freezed ? _value.userId : userId as String,
      notificationId: notificationId == freezed
          ? _value.notificationId
          : notificationId as String,
      isRead: isRead == freezed ? _value.isRead : isRead as bool,
    ));
  }
}

abstract class _$ReadCopyWith<$Res> implements $ReadCopyWith<$Res> {
  factory _$ReadCopyWith(_Read value, $Res Function(_Read) then) =
      __$ReadCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'notification_id') String notificationId,
      @JsonKey(name: 'is_read') bool isRead});
}

class __$ReadCopyWithImpl<$Res> extends _$ReadCopyWithImpl<$Res>
    implements _$ReadCopyWith<$Res> {
  __$ReadCopyWithImpl(_Read _value, $Res Function(_Read) _then)
      : super(_value, (v) => _then(v as _Read));

  @override
  _Read get _value => super._value as _Read;

  @override
  $Res call({
    Object id = freezed,
    Object userId = freezed,
    Object notificationId = freezed,
    Object isRead = freezed,
  }) {
    return _then(_Read(
      id: id == freezed ? _value.id : id as String,
      userId: userId == freezed ? _value.userId : userId as String,
      notificationId: notificationId == freezed
          ? _value.notificationId
          : notificationId as String,
      isRead: isRead == freezed ? _value.isRead : isRead as bool,
    ));
  }
}

@JsonSerializable()
class _$_Read with DiagnosticableTreeMixin implements _Read {
  const _$_Read(
      {@required this.id,
      @required @JsonKey(name: 'user_id') this.userId,
      @required @JsonKey(name: 'notification_id') this.notificationId,
      @required @JsonKey(name: 'is_read') this.isRead})
      : assert(id != null),
        assert(userId != null),
        assert(notificationId != null),
        assert(isRead != null);

  factory _$_Read.fromJson(Map<String, dynamic> json) =>
      _$_$_ReadFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'notification_id')
  final String notificationId;
  @override
  @JsonKey(name: 'is_read')
  final bool isRead;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Read(id: $id, userId: $userId, notificationId: $notificationId, isRead: $isRead)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Read'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('notificationId', notificationId))
      ..add(DiagnosticsProperty('isRead', isRead));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Read &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.notificationId, notificationId) ||
                const DeepCollectionEquality()
                    .equals(other.notificationId, notificationId)) &&
            (identical(other.isRead, isRead) ||
                const DeepCollectionEquality().equals(other.isRead, isRead)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(notificationId) ^
      const DeepCollectionEquality().hash(isRead);

  @override
  _$ReadCopyWith<_Read> get copyWith =>
      __$ReadCopyWithImpl<_Read>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ReadToJson(this);
  }
}

abstract class _Read implements Read {
  const factory _Read(
      {@required String id,
      @required @JsonKey(name: 'user_id') String userId,
      @required @JsonKey(name: 'notification_id') String notificationId,
      @required @JsonKey(name: 'is_read') bool isRead}) = _$_Read;

  factory _Read.fromJson(Map<String, dynamic> json) = _$_Read.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'notification_id')
  String get notificationId;
  @override
  @JsonKey(name: 'is_read')
  bool get isRead;
  @override
  _$ReadCopyWith<_Read> get copyWith;
}
