// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Notification _$NotificationFromJson(Map<String, dynamic> json) {
  return _Notification.fromJson(json);
}

class _$NotificationTearOff {
  const _$NotificationTearOff();

  _Notification call(
      {String id,
      @required
          String title,
      @required
          String description,
      @required
      @JsonKey(name: 'published_user')
      @UserConverter()
          User publishedUser,
      @required
      @JsonKey(name: 'created_at')
          DateTime createdAt,
      @required
      @JsonKey(name: 'is_important')
          bool isImportant}) {
    return _Notification(
      id: id,
      title: title,
      description: description,
      publishedUser: publishedUser,
      createdAt: createdAt,
      isImportant: isImportant,
    );
  }
}

// ignore: unused_element
const $Notification = _$NotificationTearOff();

mixin _$Notification {
  String get id;
  String get title;
  String get description;
  @JsonKey(name: 'published_user')
  @UserConverter()
  User get publishedUser;
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @JsonKey(name: 'is_important')
  bool get isImportant;

  Map<String, dynamic> toJson();
  $NotificationCopyWith<Notification> get copyWith;
}

abstract class $NotificationCopyWith<$Res> {
  factory $NotificationCopyWith(
          Notification value, $Res Function(Notification) then) =
      _$NotificationCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      String description,
      @JsonKey(name: 'published_user') @UserConverter() User publishedUser,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'is_important') bool isImportant});

  $UserCopyWith<$Res> get publishedUser;
}

class _$NotificationCopyWithImpl<$Res> implements $NotificationCopyWith<$Res> {
  _$NotificationCopyWithImpl(this._value, this._then);

  final Notification _value;
  // ignore: unused_field
  final $Res Function(Notification) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object description = freezed,
    Object publishedUser = freezed,
    Object createdAt = freezed,
    Object isImportant = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      publishedUser: publishedUser == freezed
          ? _value.publishedUser
          : publishedUser as User,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      isImportant:
          isImportant == freezed ? _value.isImportant : isImportant as bool,
    ));
  }

  @override
  $UserCopyWith<$Res> get publishedUser {
    if (_value.publishedUser == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.publishedUser, (value) {
      return _then(_value.copyWith(publishedUser: value));
    });
  }
}

abstract class _$NotificationCopyWith<$Res>
    implements $NotificationCopyWith<$Res> {
  factory _$NotificationCopyWith(
          _Notification value, $Res Function(_Notification) then) =
      __$NotificationCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      String description,
      @JsonKey(name: 'published_user') @UserConverter() User publishedUser,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'is_important') bool isImportant});

  @override
  $UserCopyWith<$Res> get publishedUser;
}

class __$NotificationCopyWithImpl<$Res> extends _$NotificationCopyWithImpl<$Res>
    implements _$NotificationCopyWith<$Res> {
  __$NotificationCopyWithImpl(
      _Notification _value, $Res Function(_Notification) _then)
      : super(_value, (v) => _then(v as _Notification));

  @override
  _Notification get _value => super._value as _Notification;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object description = freezed,
    Object publishedUser = freezed,
    Object createdAt = freezed,
    Object isImportant = freezed,
  }) {
    return _then(_Notification(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      publishedUser: publishedUser == freezed
          ? _value.publishedUser
          : publishedUser as User,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      isImportant:
          isImportant == freezed ? _value.isImportant : isImportant as bool,
    ));
  }
}

@JsonSerializable()
class _$_Notification with DiagnosticableTreeMixin implements _Notification {
  const _$_Notification(
      {this.id,
      @required
          this.title,
      @required
          this.description,
      @required
      @JsonKey(name: 'published_user')
      @UserConverter()
          this.publishedUser,
      @required
      @JsonKey(name: 'created_at')
          this.createdAt,
      @required
      @JsonKey(name: 'is_important')
          this.isImportant})
      : assert(title != null),
        assert(description != null),
        assert(publishedUser != null),
        assert(createdAt != null),
        assert(isImportant != null);

  factory _$_Notification.fromJson(Map<String, dynamic> json) =>
      _$_$_NotificationFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  @JsonKey(name: 'published_user')
  @UserConverter()
  final User publishedUser;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'is_important')
  final bool isImportant;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Notification(id: $id, title: $title, description: $description, publishedUser: $publishedUser, createdAt: $createdAt, isImportant: $isImportant)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Notification'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('publishedUser', publishedUser))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('isImportant', isImportant));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Notification &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.publishedUser, publishedUser) ||
                const DeepCollectionEquality()
                    .equals(other.publishedUser, publishedUser)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.isImportant, isImportant) ||
                const DeepCollectionEquality()
                    .equals(other.isImportant, isImportant)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(publishedUser) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(isImportant);

  @override
  _$NotificationCopyWith<_Notification> get copyWith =>
      __$NotificationCopyWithImpl<_Notification>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NotificationToJson(this);
  }
}

abstract class _Notification implements Notification {
  const factory _Notification(
      {String id,
      @required
          String title,
      @required
          String description,
      @required
      @JsonKey(name: 'published_user')
      @UserConverter()
          User publishedUser,
      @required
      @JsonKey(name: 'created_at')
          DateTime createdAt,
      @required
      @JsonKey(name: 'is_important')
          bool isImportant}) = _$_Notification;

  factory _Notification.fromJson(Map<String, dynamic> json) =
      _$_Notification.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(name: 'published_user')
  @UserConverter()
  User get publishedUser;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'is_important')
  bool get isImportant;
  @override
  _$NotificationCopyWith<_Notification> get copyWith;
}
