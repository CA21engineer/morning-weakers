// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'hackathon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Hackathon _$HackathonFromJson(Map<String, dynamic> json) {
  return _Hackathon.fromJson(json);
}

class _$HackathonTearOff {
  const _$HackathonTearOff();

  _Hackathon call(
      {@required @JsonKey(name: 'id') String id,
      @required String title,
      @required String description,
      @required String theme,
      @required @JsonKey(name: 'icon_url') String iconUrl,
      @required String slackUrl,
      @required String presentationUrl,
      @required DateTime startDate,
      @required DateTime endDate,
      @required int participantCount}) {
    return _Hackathon(
      id: id,
      title: title,
      description: description,
      theme: theme,
      iconUrl: iconUrl,
      slackUrl: slackUrl,
      presentationUrl: presentationUrl,
      startDate: startDate,
      endDate: endDate,
      participantCount: participantCount,
    );
  }
}

// ignore: unused_element
const $Hackathon = _$HackathonTearOff();

mixin _$Hackathon {
  @JsonKey(name: 'id')
  String get id;
  String get title;
  String get description;
  String get theme;
  @JsonKey(name: 'icon_url')
  String get iconUrl;
  String get slackUrl;
  String get presentationUrl;
  DateTime get startDate;
  DateTime get endDate;
  int get participantCount;

  Map<String, dynamic> toJson();
  $HackathonCopyWith<Hackathon> get copyWith;
}

abstract class $HackathonCopyWith<$Res> {
  factory $HackathonCopyWith(Hackathon value, $Res Function(Hackathon) then) =
      _$HackathonCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') String id,
      String title,
      String description,
      String theme,
      @JsonKey(name: 'icon_url') String iconUrl,
      String slackUrl,
      String presentationUrl,
      DateTime startDate,
      DateTime endDate,
      int participantCount});
}

class _$HackathonCopyWithImpl<$Res> implements $HackathonCopyWith<$Res> {
  _$HackathonCopyWithImpl(this._value, this._then);

  final Hackathon _value;
  // ignore: unused_field
  final $Res Function(Hackathon) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object description = freezed,
    Object theme = freezed,
    Object iconUrl = freezed,
    Object slackUrl = freezed,
    Object presentationUrl = freezed,
    Object startDate = freezed,
    Object endDate = freezed,
    Object participantCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      theme: theme == freezed ? _value.theme : theme as String,
      iconUrl: iconUrl == freezed ? _value.iconUrl : iconUrl as String,
      slackUrl: slackUrl == freezed ? _value.slackUrl : slackUrl as String,
      presentationUrl: presentationUrl == freezed
          ? _value.presentationUrl
          : presentationUrl as String,
      startDate:
          startDate == freezed ? _value.startDate : startDate as DateTime,
      endDate: endDate == freezed ? _value.endDate : endDate as DateTime,
      participantCount: participantCount == freezed
          ? _value.participantCount
          : participantCount as int,
    ));
  }
}

abstract class _$HackathonCopyWith<$Res> implements $HackathonCopyWith<$Res> {
  factory _$HackathonCopyWith(
          _Hackathon value, $Res Function(_Hackathon) then) =
      __$HackathonCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') String id,
      String title,
      String description,
      String theme,
      @JsonKey(name: 'icon_url') String iconUrl,
      String slackUrl,
      String presentationUrl,
      DateTime startDate,
      DateTime endDate,
      int participantCount});
}

class __$HackathonCopyWithImpl<$Res> extends _$HackathonCopyWithImpl<$Res>
    implements _$HackathonCopyWith<$Res> {
  __$HackathonCopyWithImpl(_Hackathon _value, $Res Function(_Hackathon) _then)
      : super(_value, (v) => _then(v as _Hackathon));

  @override
  _Hackathon get _value => super._value as _Hackathon;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object description = freezed,
    Object theme = freezed,
    Object iconUrl = freezed,
    Object slackUrl = freezed,
    Object presentationUrl = freezed,
    Object startDate = freezed,
    Object endDate = freezed,
    Object participantCount = freezed,
  }) {
    return _then(_Hackathon(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      theme: theme == freezed ? _value.theme : theme as String,
      iconUrl: iconUrl == freezed ? _value.iconUrl : iconUrl as String,
      slackUrl: slackUrl == freezed ? _value.slackUrl : slackUrl as String,
      presentationUrl: presentationUrl == freezed
          ? _value.presentationUrl
          : presentationUrl as String,
      startDate:
          startDate == freezed ? _value.startDate : startDate as DateTime,
      endDate: endDate == freezed ? _value.endDate : endDate as DateTime,
      participantCount: participantCount == freezed
          ? _value.participantCount
          : participantCount as int,
    ));
  }
}

@JsonSerializable()
class _$_Hackathon with DiagnosticableTreeMixin implements _Hackathon {
  const _$_Hackathon(
      {@required @JsonKey(name: 'id') this.id,
      @required this.title,
      @required this.description,
      @required this.theme,
      @required @JsonKey(name: 'icon_url') this.iconUrl,
      @required this.slackUrl,
      @required this.presentationUrl,
      @required this.startDate,
      @required this.endDate,
      @required this.participantCount})
      : assert(id != null),
        assert(title != null),
        assert(description != null),
        assert(theme != null),
        assert(iconUrl != null),
        assert(slackUrl != null),
        assert(presentationUrl != null),
        assert(startDate != null),
        assert(endDate != null),
        assert(participantCount != null);

  factory _$_Hackathon.fromJson(Map<String, dynamic> json) =>
      _$_$_HackathonFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String theme;
  @override
  @JsonKey(name: 'icon_url')
  final String iconUrl;
  @override
  final String slackUrl;
  @override
  final String presentationUrl;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final int participantCount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Hackathon(id: $id, title: $title, description: $description, theme: $theme, iconUrl: $iconUrl, slackUrl: $slackUrl, presentationUrl: $presentationUrl, startDate: $startDate, endDate: $endDate, participantCount: $participantCount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Hackathon'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('theme', theme))
      ..add(DiagnosticsProperty('iconUrl', iconUrl))
      ..add(DiagnosticsProperty('slackUrl', slackUrl))
      ..add(DiagnosticsProperty('presentationUrl', presentationUrl))
      ..add(DiagnosticsProperty('startDate', startDate))
      ..add(DiagnosticsProperty('endDate', endDate))
      ..add(DiagnosticsProperty('participantCount', participantCount));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Hackathon &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.theme, theme) ||
                const DeepCollectionEquality().equals(other.theme, theme)) &&
            (identical(other.iconUrl, iconUrl) ||
                const DeepCollectionEquality()
                    .equals(other.iconUrl, iconUrl)) &&
            (identical(other.slackUrl, slackUrl) ||
                const DeepCollectionEquality()
                    .equals(other.slackUrl, slackUrl)) &&
            (identical(other.presentationUrl, presentationUrl) ||
                const DeepCollectionEquality()
                    .equals(other.presentationUrl, presentationUrl)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality()
                    .equals(other.endDate, endDate)) &&
            (identical(other.participantCount, participantCount) ||
                const DeepCollectionEquality()
                    .equals(other.participantCount, participantCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(theme) ^
      const DeepCollectionEquality().hash(iconUrl) ^
      const DeepCollectionEquality().hash(slackUrl) ^
      const DeepCollectionEquality().hash(presentationUrl) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(endDate) ^
      const DeepCollectionEquality().hash(participantCount);

  @override
  _$HackathonCopyWith<_Hackathon> get copyWith =>
      __$HackathonCopyWithImpl<_Hackathon>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_HackathonToJson(this);
  }
}

abstract class _Hackathon implements Hackathon {
  const factory _Hackathon(
      {@required @JsonKey(name: 'id') String id,
      @required String title,
      @required String description,
      @required String theme,
      @required @JsonKey(name: 'icon_url') String iconUrl,
      @required String slackUrl,
      @required String presentationUrl,
      @required DateTime startDate,
      @required DateTime endDate,
      @required int participantCount}) = _$_Hackathon;

  factory _Hackathon.fromJson(Map<String, dynamic> json) =
      _$_Hackathon.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get theme;
  @override
  @JsonKey(name: 'icon_url')
  String get iconUrl;
  @override
  String get slackUrl;
  @override
  String get presentationUrl;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  int get participantCount;
  @override
  _$HackathonCopyWith<_Hackathon> get copyWith;
}
