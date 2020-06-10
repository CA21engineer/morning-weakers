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
      {@required String id,
      @required @JsonKey(name: 'group_name') String groupName,
      @required @JsonKey(name: 'github_url') String githubUrl,
      @required @JsonKey(name: 'slide_url') List<String> slideUrls,
      @required @JsonKey(name: 'other_urls') List<String> otherUrls,
      @required @JsonKey(name: 'icon_url') List<String> iconUrls,
      @required List<Participant> participants}) {
    return _Group(
      id: id,
      groupName: groupName,
      githubUrl: githubUrl,
      slideUrls: slideUrls,
      otherUrls: otherUrls,
      iconUrls: iconUrls,
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
  List<String> get slideUrls;
  @JsonKey(name: 'other_urls')
  List<String> get otherUrls;
  @JsonKey(name: 'icon_url')
  List<String> get iconUrls;
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
      @JsonKey(name: 'slide_url') List<String> slideUrls,
      @JsonKey(name: 'other_urls') List<String> otherUrls,
      @JsonKey(name: 'icon_url') List<String> iconUrls,
      List<Participant> participants});
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
    Object slideUrls = freezed,
    Object otherUrls = freezed,
    Object iconUrls = freezed,
    Object participants = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      groupName: groupName == freezed ? _value.groupName : groupName as String,
      githubUrl: githubUrl == freezed ? _value.githubUrl : githubUrl as String,
      slideUrls:
          slideUrls == freezed ? _value.slideUrls : slideUrls as List<String>,
      otherUrls:
          otherUrls == freezed ? _value.otherUrls : otherUrls as List<String>,
      iconUrls:
          iconUrls == freezed ? _value.iconUrls : iconUrls as List<String>,
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
      @JsonKey(name: 'slide_url') List<String> slideUrls,
      @JsonKey(name: 'other_urls') List<String> otherUrls,
      @JsonKey(name: 'icon_url') List<String> iconUrls,
      List<Participant> participants});
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
    Object slideUrls = freezed,
    Object otherUrls = freezed,
    Object iconUrls = freezed,
    Object participants = freezed,
  }) {
    return _then(_Group(
      id: id == freezed ? _value.id : id as String,
      groupName: groupName == freezed ? _value.groupName : groupName as String,
      githubUrl: githubUrl == freezed ? _value.githubUrl : githubUrl as String,
      slideUrls:
          slideUrls == freezed ? _value.slideUrls : slideUrls as List<String>,
      otherUrls:
          otherUrls == freezed ? _value.otherUrls : otherUrls as List<String>,
      iconUrls:
          iconUrls == freezed ? _value.iconUrls : iconUrls as List<String>,
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
      @required @JsonKey(name: 'slide_url') this.slideUrls,
      @required @JsonKey(name: 'other_urls') this.otherUrls,
      @required @JsonKey(name: 'icon_url') this.iconUrls,
      @required this.participants})
      : assert(id != null),
        assert(groupName != null),
        assert(githubUrl != null),
        assert(slideUrls != null),
        assert(otherUrls != null),
        assert(iconUrls != null),
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
  final List<String> slideUrls;
  @override
  @JsonKey(name: 'other_urls')
  final List<String> otherUrls;
  @override
  @JsonKey(name: 'icon_url')
  final List<String> iconUrls;
  @override
  final List<Participant> participants;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Group(id: $id, groupName: $groupName, githubUrl: $githubUrl, slideUrls: $slideUrls, otherUrls: $otherUrls, iconUrls: $iconUrls, participants: $participants)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Group'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('groupName', groupName))
      ..add(DiagnosticsProperty('githubUrl', githubUrl))
      ..add(DiagnosticsProperty('slideUrls', slideUrls))
      ..add(DiagnosticsProperty('otherUrls', otherUrls))
      ..add(DiagnosticsProperty('iconUrls', iconUrls))
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
            (identical(other.slideUrls, slideUrls) ||
                const DeepCollectionEquality()
                    .equals(other.slideUrls, slideUrls)) &&
            (identical(other.otherUrls, otherUrls) ||
                const DeepCollectionEquality()
                    .equals(other.otherUrls, otherUrls)) &&
            (identical(other.iconUrls, iconUrls) ||
                const DeepCollectionEquality()
                    .equals(other.iconUrls, iconUrls)) &&
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
      const DeepCollectionEquality().hash(slideUrls) ^
      const DeepCollectionEquality().hash(otherUrls) ^
      const DeepCollectionEquality().hash(iconUrls) ^
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
      {@required String id,
      @required @JsonKey(name: 'group_name') String groupName,
      @required @JsonKey(name: 'github_url') String githubUrl,
      @required @JsonKey(name: 'slide_url') List<String> slideUrls,
      @required @JsonKey(name: 'other_urls') List<String> otherUrls,
      @required @JsonKey(name: 'icon_url') List<String> iconUrls,
      @required List<Participant> participants}) = _$_Group;

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
  List<String> get slideUrls;
  @override
  @JsonKey(name: 'other_urls')
  List<String> get otherUrls;
  @override
  @JsonKey(name: 'icon_url')
  List<String> get iconUrls;
  @override
  List<Participant> get participants;
  @override
  _$GroupCopyWith<_Group> get copyWith;
}
