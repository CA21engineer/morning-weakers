// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'new_profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$NewProfileStateTearOff {
  const _$NewProfileStateTearOff();

  _NewProfileState call(
      {String fullName,
      String displayName,
      String twitterAccount,
      String githubAccount}) {
    return _NewProfileState(
      fullName: fullName,
      displayName: displayName,
      twitterAccount: twitterAccount,
      githubAccount: githubAccount,
    );
  }
}

// ignore: unused_element
const $NewProfileState = _$NewProfileStateTearOff();

mixin _$NewProfileState {
  String get fullName;
  String get displayName;
  String get twitterAccount;
  String get githubAccount;

  $NewProfileStateCopyWith<NewProfileState> get copyWith;
}

abstract class $NewProfileStateCopyWith<$Res> {
  factory $NewProfileStateCopyWith(
          NewProfileState value, $Res Function(NewProfileState) then) =
      _$NewProfileStateCopyWithImpl<$Res>;
  $Res call(
      {String fullName,
      String displayName,
      String twitterAccount,
      String githubAccount});
}

class _$NewProfileStateCopyWithImpl<$Res>
    implements $NewProfileStateCopyWith<$Res> {
  _$NewProfileStateCopyWithImpl(this._value, this._then);

  final NewProfileState _value;
  // ignore: unused_field
  final $Res Function(NewProfileState) _then;

  @override
  $Res call({
    Object fullName = freezed,
    Object displayName = freezed,
    Object twitterAccount = freezed,
    Object githubAccount = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: fullName == freezed ? _value.fullName : fullName as String,
      displayName:
          displayName == freezed ? _value.displayName : displayName as String,
      twitterAccount: twitterAccount == freezed
          ? _value.twitterAccount
          : twitterAccount as String,
      githubAccount: githubAccount == freezed
          ? _value.githubAccount
          : githubAccount as String,
    ));
  }
}

abstract class _$NewProfileStateCopyWith<$Res>
    implements $NewProfileStateCopyWith<$Res> {
  factory _$NewProfileStateCopyWith(
          _NewProfileState value, $Res Function(_NewProfileState) then) =
      __$NewProfileStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String fullName,
      String displayName,
      String twitterAccount,
      String githubAccount});
}

class __$NewProfileStateCopyWithImpl<$Res>
    extends _$NewProfileStateCopyWithImpl<$Res>
    implements _$NewProfileStateCopyWith<$Res> {
  __$NewProfileStateCopyWithImpl(
      _NewProfileState _value, $Res Function(_NewProfileState) _then)
      : super(_value, (v) => _then(v as _NewProfileState));

  @override
  _NewProfileState get _value => super._value as _NewProfileState;

  @override
  $Res call({
    Object fullName = freezed,
    Object displayName = freezed,
    Object twitterAccount = freezed,
    Object githubAccount = freezed,
  }) {
    return _then(_NewProfileState(
      fullName: fullName == freezed ? _value.fullName : fullName as String,
      displayName:
          displayName == freezed ? _value.displayName : displayName as String,
      twitterAccount: twitterAccount == freezed
          ? _value.twitterAccount
          : twitterAccount as String,
      githubAccount: githubAccount == freezed
          ? _value.githubAccount
          : githubAccount as String,
    ));
  }
}

class _$_NewProfileState
    with DiagnosticableTreeMixin
    implements _NewProfileState {
  const _$_NewProfileState(
      {this.fullName,
      this.displayName,
      this.twitterAccount,
      this.githubAccount});

  @override
  final String fullName;
  @override
  final String displayName;
  @override
  final String twitterAccount;
  @override
  final String githubAccount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewProfileState(fullName: $fullName, displayName: $displayName, twitterAccount: $twitterAccount, githubAccount: $githubAccount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NewProfileState'))
      ..add(DiagnosticsProperty('fullName', fullName))
      ..add(DiagnosticsProperty('displayName', displayName))
      ..add(DiagnosticsProperty('twitterAccount', twitterAccount))
      ..add(DiagnosticsProperty('githubAccount', githubAccount));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewProfileState &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.twitterAccount, twitterAccount) ||
                const DeepCollectionEquality()
                    .equals(other.twitterAccount, twitterAccount)) &&
            (identical(other.githubAccount, githubAccount) ||
                const DeepCollectionEquality()
                    .equals(other.githubAccount, githubAccount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(twitterAccount) ^
      const DeepCollectionEquality().hash(githubAccount);

  @override
  _$NewProfileStateCopyWith<_NewProfileState> get copyWith =>
      __$NewProfileStateCopyWithImpl<_NewProfileState>(this, _$identity);
}

abstract class _NewProfileState implements NewProfileState {
  const factory _NewProfileState(
      {String fullName,
      String displayName,
      String twitterAccount,
      String githubAccount}) = _$_NewProfileState;

  @override
  String get fullName;
  @override
  String get displayName;
  @override
  String get twitterAccount;
  @override
  String get githubAccount;
  @override
  _$NewProfileStateCopyWith<_NewProfileState> get copyWith;
}
