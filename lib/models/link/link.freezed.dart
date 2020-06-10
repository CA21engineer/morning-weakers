// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'link.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Link _$LinkFromJson(Map<String, dynamic> json) {
  return _Link.fromJson(json);
}

class _$LinkTearOff {
  const _$LinkTearOff();

  _Link call(
      {@required String id,
      @required String title,
      @required String url,
      @required @JsonKey(name: 'icon_url') String iconUrl}) {
    return _Link(
      id: id,
      title: title,
      url: url,
      iconUrl: iconUrl,
    );
  }
}

// ignore: unused_element
const $Link = _$LinkTearOff();

mixin _$Link {
  String get id;
  String get title;
  String get url;
  @JsonKey(name: 'icon_url')
  String get iconUrl;

  Map<String, dynamic> toJson();
  $LinkCopyWith<Link> get copyWith;
}

abstract class $LinkCopyWith<$Res> {
  factory $LinkCopyWith(Link value, $Res Function(Link) then) =
      _$LinkCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      String url,
      @JsonKey(name: 'icon_url') String iconUrl});
}

class _$LinkCopyWithImpl<$Res> implements $LinkCopyWith<$Res> {
  _$LinkCopyWithImpl(this._value, this._then);

  final Link _value;
  // ignore: unused_field
  final $Res Function(Link) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object url = freezed,
    Object iconUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      url: url == freezed ? _value.url : url as String,
      iconUrl: iconUrl == freezed ? _value.iconUrl : iconUrl as String,
    ));
  }
}

abstract class _$LinkCopyWith<$Res> implements $LinkCopyWith<$Res> {
  factory _$LinkCopyWith(_Link value, $Res Function(_Link) then) =
      __$LinkCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      String url,
      @JsonKey(name: 'icon_url') String iconUrl});
}

class __$LinkCopyWithImpl<$Res> extends _$LinkCopyWithImpl<$Res>
    implements _$LinkCopyWith<$Res> {
  __$LinkCopyWithImpl(_Link _value, $Res Function(_Link) _then)
      : super(_value, (v) => _then(v as _Link));

  @override
  _Link get _value => super._value as _Link;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object url = freezed,
    Object iconUrl = freezed,
  }) {
    return _then(_Link(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      url: url == freezed ? _value.url : url as String,
      iconUrl: iconUrl == freezed ? _value.iconUrl : iconUrl as String,
    ));
  }
}

@JsonSerializable()
class _$_Link with DiagnosticableTreeMixin implements _Link {
  const _$_Link(
      {@required this.id,
      @required this.title,
      @required this.url,
      @required @JsonKey(name: 'icon_url') this.iconUrl})
      : assert(id != null),
        assert(title != null),
        assert(url != null),
        assert(iconUrl != null);

  factory _$_Link.fromJson(Map<String, dynamic> json) =>
      _$_$_LinkFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String url;
  @override
  @JsonKey(name: 'icon_url')
  final String iconUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Link(id: $id, title: $title, url: $url, iconUrl: $iconUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Link'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('url', url))
      ..add(DiagnosticsProperty('iconUrl', iconUrl));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Link &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.iconUrl, iconUrl) ||
                const DeepCollectionEquality().equals(other.iconUrl, iconUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(iconUrl);

  @override
  _$LinkCopyWith<_Link> get copyWith =>
      __$LinkCopyWithImpl<_Link>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LinkToJson(this);
  }
}

abstract class _Link implements Link {
  const factory _Link(
      {@required String id,
      @required String title,
      @required String url,
      @required @JsonKey(name: 'icon_url') String iconUrl}) = _$_Link;

  factory _Link.fromJson(Map<String, dynamic> json) = _$_Link.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get url;
  @override
  @JsonKey(name: 'icon_url')
  String get iconUrl;
  @override
  _$LinkCopyWith<_Link> get copyWith;
}
