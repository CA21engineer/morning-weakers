// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {@required
          String id,
      @JsonKey(name: 'full_name')
          String fullName = '',
      @JsonKey(name: 'display_name')
          String displayName = '',
      @JsonKey(name: 'technical_stacks')
      @TechnicalStackConverter()
          List<TechnicalStack> technicalStacks,
      @JsonKey(name: 'github_account')
          String githubAccount = '',
      @JsonKey(name: 'twitter_account')
          String twitterAccount = '',
      @JsonKey(name: 'icon_url')
          String iconUrl = ''}) {
    return _User(
      id: id,
      fullName: fullName,
      displayName: displayName,
      technicalStacks: technicalStacks,
      githubAccount: githubAccount,
      twitterAccount: twitterAccount,
      iconUrl: iconUrl,
    );
  }
}

// ignore: unused_element
const $User = _$UserTearOff();

mixin _$User {
  String get id;
  @JsonKey(name: 'full_name')
  String get fullName;
  @JsonKey(name: 'display_name')
  String get displayName;
  @JsonKey(name: 'technical_stacks')
  @TechnicalStackConverter()
  List<TechnicalStack> get technicalStacks;
  @JsonKey(name: 'github_account')
  String get githubAccount;
  @JsonKey(name: 'twitter_account')
  String get twitterAccount;
  @JsonKey(name: 'icon_url')
  String get iconUrl;

  Map<String, dynamic> toJson();
  $UserCopyWith<User> get copyWith;
}

abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {String id,
      @JsonKey(name: 'full_name')
          String fullName,
      @JsonKey(name: 'display_name')
          String displayName,
      @JsonKey(name: 'technical_stacks')
      @TechnicalStackConverter()
          List<TechnicalStack> technicalStacks,
      @JsonKey(name: 'github_account')
          String githubAccount,
      @JsonKey(name: 'twitter_account')
          String twitterAccount,
      @JsonKey(name: 'icon_url')
          String iconUrl});
}

class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object id = freezed,
    Object fullName = freezed,
    Object displayName = freezed,
    Object technicalStacks = freezed,
    Object githubAccount = freezed,
    Object twitterAccount = freezed,
    Object iconUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      fullName: fullName == freezed ? _value.fullName : fullName as String,
      displayName:
          displayName == freezed ? _value.displayName : displayName as String,
      technicalStacks: technicalStacks == freezed
          ? _value.technicalStacks
          : technicalStacks as List<TechnicalStack>,
      githubAccount: githubAccount == freezed
          ? _value.githubAccount
          : githubAccount as String,
      twitterAccount: twitterAccount == freezed
          ? _value.twitterAccount
          : twitterAccount as String,
      iconUrl: iconUrl == freezed ? _value.iconUrl : iconUrl as String,
    ));
  }
}

abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      @JsonKey(name: 'full_name')
          String fullName,
      @JsonKey(name: 'display_name')
          String displayName,
      @JsonKey(name: 'technical_stacks')
      @TechnicalStackConverter()
          List<TechnicalStack> technicalStacks,
      @JsonKey(name: 'github_account')
          String githubAccount,
      @JsonKey(name: 'twitter_account')
          String twitterAccount,
      @JsonKey(name: 'icon_url')
          String iconUrl});
}

class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object id = freezed,
    Object fullName = freezed,
    Object displayName = freezed,
    Object technicalStacks = freezed,
    Object githubAccount = freezed,
    Object twitterAccount = freezed,
    Object iconUrl = freezed,
  }) {
    return _then(_User(
      id: id == freezed ? _value.id : id as String,
      fullName: fullName == freezed ? _value.fullName : fullName as String,
      displayName:
          displayName == freezed ? _value.displayName : displayName as String,
      technicalStacks: technicalStacks == freezed
          ? _value.technicalStacks
          : technicalStacks as List<TechnicalStack>,
      githubAccount: githubAccount == freezed
          ? _value.githubAccount
          : githubAccount as String,
      twitterAccount: twitterAccount == freezed
          ? _value.twitterAccount
          : twitterAccount as String,
      iconUrl: iconUrl == freezed ? _value.iconUrl : iconUrl as String,
    ));
  }
}

@JsonSerializable()
class _$_User with DiagnosticableTreeMixin implements _User {
  const _$_User(
      {@required
          this.id,
      @JsonKey(name: 'full_name')
          this.fullName = '',
      @JsonKey(name: 'display_name')
          this.displayName = '',
      @JsonKey(name: 'technical_stacks')
      @TechnicalStackConverter()
          this.technicalStacks,
      @JsonKey(name: 'github_account')
          this.githubAccount = '',
      @JsonKey(name: 'twitter_account')
          this.twitterAccount = '',
      @JsonKey(name: 'icon_url')
          this.iconUrl = ''})
      : assert(id != null),
        assert(fullName != null),
        assert(displayName != null),
        assert(githubAccount != null),
        assert(twitterAccount != null),
        assert(iconUrl != null);

  factory _$_User.fromJson(Map<String, dynamic> json) =>
      _$_$_UserFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'full_name')
  final String fullName;
  @override
  @JsonKey(name: 'display_name')
  final String displayName;
  @override
  @JsonKey(name: 'technical_stacks')
  @TechnicalStackConverter()
  final List<TechnicalStack> technicalStacks;
  @override
  @JsonKey(name: 'github_account')
  final String githubAccount;
  @override
  @JsonKey(name: 'twitter_account')
  final String twitterAccount;
  @override
  @JsonKey(name: 'icon_url')
  final String iconUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User(id: $id, fullName: $fullName, displayName: $displayName, technicalStacks: $technicalStacks, githubAccount: $githubAccount, twitterAccount: $twitterAccount, iconUrl: $iconUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('fullName', fullName))
      ..add(DiagnosticsProperty('displayName', displayName))
      ..add(DiagnosticsProperty('technicalStacks', technicalStacks))
      ..add(DiagnosticsProperty('githubAccount', githubAccount))
      ..add(DiagnosticsProperty('twitterAccount', twitterAccount))
      ..add(DiagnosticsProperty('iconUrl', iconUrl));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.technicalStacks, technicalStacks) ||
                const DeepCollectionEquality()
                    .equals(other.technicalStacks, technicalStacks)) &&
            (identical(other.githubAccount, githubAccount) ||
                const DeepCollectionEquality()
                    .equals(other.githubAccount, githubAccount)) &&
            (identical(other.twitterAccount, twitterAccount) ||
                const DeepCollectionEquality()
                    .equals(other.twitterAccount, twitterAccount)) &&
            (identical(other.iconUrl, iconUrl) ||
                const DeepCollectionEquality().equals(other.iconUrl, iconUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(technicalStacks) ^
      const DeepCollectionEquality().hash(githubAccount) ^
      const DeepCollectionEquality().hash(twitterAccount) ^
      const DeepCollectionEquality().hash(iconUrl);

  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserToJson(this);
  }
}

abstract class _User implements User {
  const factory _User(
      {@required
          String id,
      @JsonKey(name: 'full_name')
          String fullName,
      @JsonKey(name: 'display_name')
          String displayName,
      @JsonKey(name: 'technical_stacks')
      @TechnicalStackConverter()
          List<TechnicalStack> technicalStacks,
      @JsonKey(name: 'github_account')
          String githubAccount,
      @JsonKey(name: 'twitter_account')
          String twitterAccount,
      @JsonKey(name: 'icon_url')
          String iconUrl}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'full_name')
  String get fullName;
  @override
  @JsonKey(name: 'display_name')
  String get displayName;
  @override
  @JsonKey(name: 'technical_stacks')
  @TechnicalStackConverter()
  List<TechnicalStack> get technicalStacks;
  @override
  @JsonKey(name: 'github_account')
  String get githubAccount;
  @override
  @JsonKey(name: 'twitter_account')
  String get twitterAccount;
  @override
  @JsonKey(name: 'icon_url')
  String get iconUrl;
  @override
  _$UserCopyWith<_User> get copyWith;
}
