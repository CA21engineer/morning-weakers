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
      @required @JsonKey(name: 'slide_url') List<String> slideUrl,
      @required @JsonKey(name: 'other_urls') List<String> otherUrls,
      @required @JsonKey(name: 'icon_url') List<String> iconUrl}) {
    return _Group(
      id: id,
      groupName: groupName,
      githubUrl: githubUrl,
      slideUrl: slideUrl,
      otherUrls: otherUrls,
      iconUrl: iconUrl,
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
  List<String> get slideUrl;
  @JsonKey(name: 'other_urls')
  List<String> get otherUrls;
  @JsonKey(name: 'icon_url')
  List<String> get iconUrl;

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
      @JsonKey(name: 'slide_url') List<String> slideUrl,
      @JsonKey(name: 'other_urls') List<String> otherUrls,
      @JsonKey(name: 'icon_url') List<String> iconUrl});
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
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      groupName: groupName == freezed ? _value.groupName : groupName as String,
      githubUrl: githubUrl == freezed ? _value.githubUrl : githubUrl as String,
      slideUrl:
          slideUrl == freezed ? _value.slideUrl : slideUrl as List<String>,
      otherUrls:
          otherUrls == freezed ? _value.otherUrls : otherUrls as List<String>,
      iconUrl: iconUrl == freezed ? _value.iconUrl : iconUrl as List<String>,
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
      @JsonKey(name: 'slide_url') List<String> slideUrl,
      @JsonKey(name: 'other_urls') List<String> otherUrls,
      @JsonKey(name: 'icon_url') List<String> iconUrl});
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
  }) {
    return _then(_Group(
      id: id == freezed ? _value.id : id as String,
      groupName: groupName == freezed ? _value.groupName : groupName as String,
      githubUrl: githubUrl == freezed ? _value.githubUrl : githubUrl as String,
      slideUrl:
          slideUrl == freezed ? _value.slideUrl : slideUrl as List<String>,
      otherUrls:
          otherUrls == freezed ? _value.otherUrls : otherUrls as List<String>,
      iconUrl: iconUrl == freezed ? _value.iconUrl : iconUrl as List<String>,
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
      @required @JsonKey(name: 'other_urls') this.otherUrls,
      @required @JsonKey(name: 'icon_url') this.iconUrl})
      : assert(id != null),
        assert(groupName != null),
        assert(githubUrl != null),
        assert(slideUrl != null),
        assert(otherUrls != null),
        assert(iconUrl != null);

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
  final List<String> slideUrl;
  @override
  @JsonKey(name: 'other_urls')
  final List<String> otherUrls;
  @override
  @JsonKey(name: 'icon_url')
  final List<String> iconUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Group(id: $id, groupName: $groupName, githubUrl: $githubUrl, slideUrl: $slideUrl, otherUrls: $otherUrls, iconUrl: $iconUrl)';
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
      ..add(DiagnosticsProperty('iconUrl', iconUrl));
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
                const DeepCollectionEquality().equals(other.iconUrl, iconUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(groupName) ^
      const DeepCollectionEquality().hash(githubUrl) ^
      const DeepCollectionEquality().hash(slideUrl) ^
      const DeepCollectionEquality().hash(otherUrls) ^
      const DeepCollectionEquality().hash(iconUrl);

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
      @required @JsonKey(name: 'slide_url') List<String> slideUrl,
      @required @JsonKey(name: 'other_urls') List<String> otherUrls,
      @required @JsonKey(name: 'icon_url') List<String> iconUrl}) = _$_Group;

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
  List<String> get slideUrl;
  @override
  @JsonKey(name: 'other_urls')
  List<String> get otherUrls;
  @override
  @JsonKey(name: 'icon_url')
  List<String> get iconUrl;
  @override
  _$GroupCopyWith<_Group> get copyWith;
}
