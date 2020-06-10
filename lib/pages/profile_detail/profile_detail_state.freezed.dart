// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'profile_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ProfileDetailStateTearOff {
  const _$ProfileDetailStateTearOff();

  _ProfileDetailState call(
      {String fullName = '',
      String displayName = '',
      String githubAccount = '',
      String twitterAccount = '',
      String iconUrl = ''}) {
    return _ProfileDetailState(
      fullName: fullName,
      displayName: displayName,
      githubAccount: githubAccount,
      twitterAccount: twitterAccount,
      iconUrl: iconUrl,
    );
  }
}

// ignore: unused_element
const $ProfileDetailState = _$ProfileDetailStateTearOff();

mixin _$ProfileDetailState {
  String get fullName;
  String get displayName;
  String get githubAccount;
  String get twitterAccount;
  String get iconUrl;

  $ProfileDetailStateCopyWith<ProfileDetailState> get copyWith;
}

abstract class $ProfileDetailStateCopyWith<$Res> {
  factory $ProfileDetailStateCopyWith(
          ProfileDetailState value, $Res Function(ProfileDetailState) then) =
      _$ProfileDetailStateCopyWithImpl<$Res>;
  $Res call(
      {String fullName,
      String displayName,
      String githubAccount,
      String twitterAccount,
      String iconUrl});
}

class _$ProfileDetailStateCopyWithImpl<$Res>
    implements $ProfileDetailStateCopyWith<$Res> {
  _$ProfileDetailStateCopyWithImpl(this._value, this._then);

  final ProfileDetailState _value;
  // ignore: unused_field
  final $Res Function(ProfileDetailState) _then;

  @override
  $Res call({
    Object fullName = freezed,
    Object displayName = freezed,
    Object githubAccount = freezed,
    Object twitterAccount = freezed,
    Object iconUrl = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: fullName == freezed ? _value.fullName : fullName as String,
      displayName:
          displayName == freezed ? _value.displayName : displayName as String,
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

abstract class _$ProfileDetailStateCopyWith<$Res>
    implements $ProfileDetailStateCopyWith<$Res> {
  factory _$ProfileDetailStateCopyWith(
          _ProfileDetailState value, $Res Function(_ProfileDetailState) then) =
      __$ProfileDetailStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String fullName,
      String displayName,
      String githubAccount,
      String twitterAccount,
      String iconUrl});
}

class __$ProfileDetailStateCopyWithImpl<$Res>
    extends _$ProfileDetailStateCopyWithImpl<$Res>
    implements _$ProfileDetailStateCopyWith<$Res> {
  __$ProfileDetailStateCopyWithImpl(
      _ProfileDetailState _value, $Res Function(_ProfileDetailState) _then)
      : super(_value, (v) => _then(v as _ProfileDetailState));

  @override
  _ProfileDetailState get _value => super._value as _ProfileDetailState;

  @override
  $Res call({
    Object fullName = freezed,
    Object displayName = freezed,
    Object githubAccount = freezed,
    Object twitterAccount = freezed,
    Object iconUrl = freezed,
  }) {
    return _then(_ProfileDetailState(
      fullName: fullName == freezed ? _value.fullName : fullName as String,
      displayName:
          displayName == freezed ? _value.displayName : displayName as String,
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

class _$_ProfileDetailState
    with DiagnosticableTreeMixin
    implements _ProfileDetailState {
  const _$_ProfileDetailState(
      {this.fullName = '',
      this.displayName = '',
      this.githubAccount = '',
      this.twitterAccount = '',
      this.iconUrl = ''})
      : assert(fullName != null),
        assert(displayName != null),
        assert(githubAccount != null),
        assert(twitterAccount != null),
        assert(iconUrl != null);

  @JsonKey(defaultValue: '')
  @override
  final String fullName;
  @JsonKey(defaultValue: '')
  @override
  final String displayName;
  @JsonKey(defaultValue: '')
  @override
  final String githubAccount;
  @JsonKey(defaultValue: '')
  @override
  final String twitterAccount;
  @JsonKey(defaultValue: '')
  @override
  final String iconUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileDetailState(fullName: $fullName, displayName: $displayName, githubAccount: $githubAccount, twitterAccount: $twitterAccount, iconUrl: $iconUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileDetailState'))
      ..add(DiagnosticsProperty('fullName', fullName))
      ..add(DiagnosticsProperty('displayName', displayName))
      ..add(DiagnosticsProperty('githubAccount', githubAccount))
      ..add(DiagnosticsProperty('twitterAccount', twitterAccount))
      ..add(DiagnosticsProperty('iconUrl', iconUrl));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfileDetailState &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
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
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(githubAccount) ^
      const DeepCollectionEquality().hash(twitterAccount) ^
      const DeepCollectionEquality().hash(iconUrl);

  @override
  _$ProfileDetailStateCopyWith<_ProfileDetailState> get copyWith =>
      __$ProfileDetailStateCopyWithImpl<_ProfileDetailState>(this, _$identity);
}

abstract class _ProfileDetailState implements ProfileDetailState {
  const factory _ProfileDetailState(
      {String fullName,
      String displayName,
      String githubAccount,
      String twitterAccount,
      String iconUrl}) = _$_ProfileDetailState;

  @override
  String get fullName;
  @override
  String get displayName;
  @override
  String get githubAccount;
  @override
  String get twitterAccount;
  @override
  String get iconUrl;
  @override
  _$ProfileDetailStateCopyWith<_ProfileDetailState> get copyWith;
}
