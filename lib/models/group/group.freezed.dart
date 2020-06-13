// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Group _$GroupFromJson(Map<String, dynamic> json) {
  return _Group.fromJson(json);
}

class _$GroupTearOff {
  const _$GroupTearOff();

  _Group call(
      {@required
          String id,
      @required
      @JsonKey(name: 'group_name')
          String groupName,
      @required
      @JsonKey(name: 'github_url')
          String githubUrl,
      @required
      @JsonKey(name: 'slide_url')
          String slideUrl,
      @required
      @JsonKey(name: 'other_urls')
      @LinkConverter()
          List<Link> otherUrls,
      @required
      @JsonKey(name: 'icon_url')
          String iconUrl,
      @required
      @ParticipantConverter()
          List<Participant> participants}) {
    return _Group(
      id: id,
      groupName: groupName,
      githubUrl: githubUrl,
      slideUrl: slideUrl,
      otherUrls: otherUrls,
      iconUrl: iconUrl,
      participants: participants,
    );
  }
}

// ignore: unused_element
const $Group = _$GroupTearOff();

mixin _$Group {
  String get id;
  @JsonKey(name: 'group_name')
  String get groupName;
  @JsonKey(name: 'github_url')
  String get githubUrl;
  @JsonKey(name: 'slide_url')
  String get slideUrl;
  @JsonKey(name: 'other_urls')
  @LinkConverter()
  List<Link> get otherUrls;
  @JsonKey(name: 'icon_url')
  String get iconUrl;
  @ParticipantConverter()
  List<Participant> get participants;

  Map<String, dynamic> toJson();
  $GroupCopyWith<Group> get copyWith;
}

abstract class $GroupCopyWith<$Res> {
  factory $GroupCopyWith(Group value, $Res Function(Group) then) =
      _$GroupCopyWithImpl<$Res>;
  $Res call(
      {String id,
      @JsonKey(name: 'group_name') String groupName,
      @JsonKey(name: 'github_url') String githubUrl,
      @JsonKey(name: 'slide_url') String slideUrl,
      @JsonKey(name: 'other_urls') @LinkConverter() List<Link> otherUrls,
      @JsonKey(name: 'icon_url') String iconUrl,
      @ParticipantConverter() List<Participant> participants});
}

class _$GroupCopyWithImpl<$Res> implements $GroupCopyWith<$Res> {
  _$GroupCopyWithImpl(this._value, this._then);

  final Group _value;
  // ignore: unused_field
  final $Res Function(Group) _then;

  @override
  $Res call({
    Object id = freezed,
    Object groupName = freezed,
    Object githubUrl = freezed,
    Object slideUrl = freezed,
    Object otherUrls = freezed,
    Object iconUrl = freezed,
    Object participants = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      groupName: groupName == freezed ? _value.groupName : groupName as String,
      githubUrl: githubUrl == freezed ? _value.githubUrl : githubUrl as String,
      slideUrl: slideUrl == freezed ? _value.slideUrl : slideUrl as String,
      otherUrls:
          otherUrls == freezed ? _value.otherUrls : otherUrls as List<Link>,
      iconUrl: iconUrl == freezed ? _value.iconUrl : iconUrl as String,
      participants: participants == freezed
          ? _value.participants
          : participants as List<Participant>,
    ));
  }
}

abstract class _$GroupCopyWith<$Res> implements $GroupCopyWith<$Res> {
  factory _$GroupCopyWith(_Group value, $Res Function(_Group) then) =
      __$GroupCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      @JsonKey(name: 'group_name') String groupName,
      @JsonKey(name: 'github_url') String githubUrl,
      @JsonKey(name: 'slide_url') String slideUrl,
      @JsonKey(name: 'other_urls') @LinkConverter() List<Link> otherUrls,
      @JsonKey(name: 'icon_url') String iconUrl,
      @ParticipantConverter() List<Participant> participants});
}

class __$GroupCopyWithImpl<$Res> extends _$GroupCopyWithImpl<$Res>
    implements _$GroupCopyWith<$Res> {
  __$GroupCopyWithImpl(_Group _value, $Res Function(_Group) _then)
      : super(_value, (v) => _then(v as _Group));

  @override
  _Group get _value => super._value as _Group;

  @override
  $Res call({
    Object id = freezed,
    Object groupName = freezed,
    Object githubUrl = freezed,
    Object slideUrl = freezed,
    Object otherUrls = freezed,
    Object iconUrl = freezed,
    Object participants = freezed,
  }) {
    return _then(_Group(
      id: id == freezed ? _value.id : id as String,
      groupName: groupName == freezed ? _value.groupName : groupName as String,
      githubUrl: githubUrl == freezed ? _value.githubUrl : githubUrl as String,
      slideUrl: slideUrl == freezed ? _value.slideUrl : slideUrl as String,
      otherUrls:
          otherUrls == freezed ? _value.otherUrls : otherUrls as List<Link>,
      iconUrl: iconUrl == freezed ? _value.iconUrl : iconUrl as String,
      participants: participants == freezed
          ? _value.participants
          : participants as List<Participant>,
    ));
  }
}

@JsonSerializable()
class _$_Group with DiagnosticableTreeMixin implements _Group {
  const _$_Group(
      {@required this.id,
      @required @JsonKey(name: 'group_name') this.groupName,
      @required @JsonKey(name: 'github_url') this.githubUrl,
      @required @JsonKey(name: 'slide_url') this.slideUrl,
      @required @JsonKey(name: 'other_urls') @LinkConverter() this.otherUrls,
      @required @JsonKey(name: 'icon_url') this.iconUrl,
      @required @ParticipantConverter() this.participants})
      : assert(id != null),
        assert(groupName != null),
        assert(githubUrl != null),
        assert(slideUrl != null),
        assert(otherUrls != null),
        assert(iconUrl != null),
        assert(participants != null);

  factory _$_Group.fromJson(Map<String, dynamic> json) =>
      _$_$_GroupFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'group_name')
  final String groupName;
  @override
  @JsonKey(name: 'github_url')
  final String githubUrl;
  @override
  @JsonKey(name: 'slide_url')
  final String slideUrl;
  @override
  @JsonKey(name: 'other_urls')
  @LinkConverter()
  final List<Link> otherUrls;
  @override
  @JsonKey(name: 'icon_url')
  final String iconUrl;
  @override
  @ParticipantConverter()
  final List<Participant> participants;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Group(id: $id, groupName: $groupName, githubUrl: $githubUrl, slideUrl: $slideUrl, otherUrls: $otherUrls, iconUrl: $iconUrl, participants: $participants)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Group'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('groupName', groupName))
      ..add(DiagnosticsProperty('githubUrl', githubUrl))
      ..add(DiagnosticsProperty('slideUrl', slideUrl))
      ..add(DiagnosticsProperty('otherUrls', otherUrls))
      ..add(DiagnosticsProperty('iconUrl', iconUrl))
      ..add(DiagnosticsProperty('participants', participants));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Group &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.groupName, groupName) ||
                const DeepCollectionEquality()
                    .equals(other.groupName, groupName)) &&
            (identical(other.githubUrl, githubUrl) ||
                const DeepCollectionEquality()
                    .equals(other.githubUrl, githubUrl)) &&
            (identical(other.slideUrl, slideUrl) ||
                const DeepCollectionEquality()
                    .equals(other.slideUrl, slideUrl)) &&
            (identical(other.otherUrls, otherUrls) ||
                const DeepCollectionEquality()
                    .equals(other.otherUrls, otherUrls)) &&
            (identical(other.iconUrl, iconUrl) ||
                const DeepCollectionEquality()
                    .equals(other.iconUrl, iconUrl)) &&
            (identical(other.participants, participants) ||
                const DeepCollectionEquality()
                    .equals(other.participants, participants)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(groupName) ^
      const DeepCollectionEquality().hash(githubUrl) ^
      const DeepCollectionEquality().hash(slideUrl) ^
      const DeepCollectionEquality().hash(otherUrls) ^
      const DeepCollectionEquality().hash(iconUrl) ^
      const DeepCollectionEquality().hash(participants);

  @override
  _$GroupCopyWith<_Group> get copyWith =>
      __$GroupCopyWithImpl<_Group>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GroupToJson(this);
  }
}

abstract class _Group implements Group {
  const factory _Group(
      {@required
          String id,
      @required
      @JsonKey(name: 'group_name')
          String groupName,
      @required
      @JsonKey(name: 'github_url')
          String githubUrl,
      @required
      @JsonKey(name: 'slide_url')
          String slideUrl,
      @required
      @JsonKey(name: 'other_urls')
      @LinkConverter()
          List<Link> otherUrls,
      @required
      @JsonKey(name: 'icon_url')
          String iconUrl,
      @required
      @ParticipantConverter()
          List<Participant> participants}) = _$_Group;

  factory _Group.fromJson(Map<String, dynamic> json) = _$_Group.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'group_name')
  String get groupName;
  @override
  @JsonKey(name: 'github_url')
  String get githubUrl;
  @override
  @JsonKey(name: 'slide_url')
  String get slideUrl;
  @override
  @JsonKey(name: 'other_urls')
  @LinkConverter()
  List<Link> get otherUrls;
  @override
  @JsonKey(name: 'icon_url')
  String get iconUrl;
  @override
  @ParticipantConverter()
  List<Participant> get participants;
  @override
  _$GroupCopyWith<_Group> get copyWith;
}
