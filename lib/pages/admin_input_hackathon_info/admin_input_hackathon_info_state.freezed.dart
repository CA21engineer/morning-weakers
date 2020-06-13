// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'admin_input_hackathon_info_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AdminInputHackathonInfoStateTearOff {
  const _$AdminInputHackathonInfoStateTearOff();

  _AdminInputHackathonInfoState call(
      {NotifierState notifierState = NotifierState.initial,
      String title = '',
      String description = '',
      String theme = '',
      DateTime startDate,
      DateTime endDate,
      int span}) {
    return _AdminInputHackathonInfoState(
      notifierState: notifierState,
      title: title,
      description: description,
      theme: theme,
      startDate: startDate,
      endDate: endDate,
      span: span,
    );
  }
}

// ignore: unused_element
const $AdminInputHackathonInfoState = _$AdminInputHackathonInfoStateTearOff();

mixin _$AdminInputHackathonInfoState {
  NotifierState get notifierState;
  String get title;
  String get description;
  String get theme;
  DateTime get startDate;
  DateTime get endDate;
  int get span;

  $AdminInputHackathonInfoStateCopyWith<AdminInputHackathonInfoState>
      get copyWith;
}

abstract class $AdminInputHackathonInfoStateCopyWith<$Res> {
  factory $AdminInputHackathonInfoStateCopyWith(
          AdminInputHackathonInfoState value,
          $Res Function(AdminInputHackathonInfoState) then) =
      _$AdminInputHackathonInfoStateCopyWithImpl<$Res>;
  $Res call(
      {NotifierState notifierState,
      String title,
      String description,
      String theme,
      DateTime startDate,
      DateTime endDate,
      int span});
}

class _$AdminInputHackathonInfoStateCopyWithImpl<$Res>
    implements $AdminInputHackathonInfoStateCopyWith<$Res> {
  _$AdminInputHackathonInfoStateCopyWithImpl(this._value, this._then);

  final AdminInputHackathonInfoState _value;
  // ignore: unused_field
  final $Res Function(AdminInputHackathonInfoState) _then;

  @override
  $Res call({
    Object notifierState = freezed,
    Object title = freezed,
    Object description = freezed,
    Object theme = freezed,
    Object startDate = freezed,
    Object endDate = freezed,
    Object span = freezed,
  }) {
    return _then(_value.copyWith(
      notifierState: notifierState == freezed
          ? _value.notifierState
          : notifierState as NotifierState,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      theme: theme == freezed ? _value.theme : theme as String,
      startDate:
          startDate == freezed ? _value.startDate : startDate as DateTime,
      endDate: endDate == freezed ? _value.endDate : endDate as DateTime,
      span: span == freezed ? _value.span : span as int,
    ));
  }
}

abstract class _$AdminInputHackathonInfoStateCopyWith<$Res>
    implements $AdminInputHackathonInfoStateCopyWith<$Res> {
  factory _$AdminInputHackathonInfoStateCopyWith(
          _AdminInputHackathonInfoState value,
          $Res Function(_AdminInputHackathonInfoState) then) =
      __$AdminInputHackathonInfoStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {NotifierState notifierState,
      String title,
      String description,
      String theme,
      DateTime startDate,
      DateTime endDate,
      int span});
}

class __$AdminInputHackathonInfoStateCopyWithImpl<$Res>
    extends _$AdminInputHackathonInfoStateCopyWithImpl<$Res>
    implements _$AdminInputHackathonInfoStateCopyWith<$Res> {
  __$AdminInputHackathonInfoStateCopyWithImpl(
      _AdminInputHackathonInfoState _value,
      $Res Function(_AdminInputHackathonInfoState) _then)
      : super(_value, (v) => _then(v as _AdminInputHackathonInfoState));

  @override
  _AdminInputHackathonInfoState get _value =>
      super._value as _AdminInputHackathonInfoState;

  @override
  $Res call({
    Object notifierState = freezed,
    Object title = freezed,
    Object description = freezed,
    Object theme = freezed,
    Object startDate = freezed,
    Object endDate = freezed,
    Object span = freezed,
  }) {
    return _then(_AdminInputHackathonInfoState(
      notifierState: notifierState == freezed
          ? _value.notifierState
          : notifierState as NotifierState,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      theme: theme == freezed ? _value.theme : theme as String,
      startDate:
          startDate == freezed ? _value.startDate : startDate as DateTime,
      endDate: endDate == freezed ? _value.endDate : endDate as DateTime,
      span: span == freezed ? _value.span : span as int,
    ));
  }
}

class _$_AdminInputHackathonInfoState
    with DiagnosticableTreeMixin
    implements _AdminInputHackathonInfoState {
  const _$_AdminInputHackathonInfoState(
      {this.notifierState = NotifierState.initial,
      this.title = '',
      this.description = '',
      this.theme = '',
      this.startDate,
      this.endDate,
      this.span})
      : assert(notifierState != null),
        assert(title != null),
        assert(description != null),
        assert(theme != null);

  @JsonKey(defaultValue: NotifierState.initial)
  @override
  final NotifierState notifierState;
  @JsonKey(defaultValue: '')
  @override
  final String title;
  @JsonKey(defaultValue: '')
  @override
  final String description;
  @JsonKey(defaultValue: '')
  @override
  final String theme;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final int span;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AdminInputHackathonInfoState(notifierState: $notifierState, title: $title, description: $description, theme: $theme, startDate: $startDate, endDate: $endDate, span: $span)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AdminInputHackathonInfoState'))
      ..add(DiagnosticsProperty('notifierState', notifierState))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('theme', theme))
      ..add(DiagnosticsProperty('startDate', startDate))
      ..add(DiagnosticsProperty('endDate', endDate))
      ..add(DiagnosticsProperty('span', span));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AdminInputHackathonInfoState &&
            (identical(other.notifierState, notifierState) ||
                const DeepCollectionEquality()
                    .equals(other.notifierState, notifierState)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.theme, theme) ||
                const DeepCollectionEquality().equals(other.theme, theme)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality()
                    .equals(other.endDate, endDate)) &&
            (identical(other.span, span) ||
                const DeepCollectionEquality().equals(other.span, span)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(notifierState) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(theme) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(endDate) ^
      const DeepCollectionEquality().hash(span);

  @override
  _$AdminInputHackathonInfoStateCopyWith<_AdminInputHackathonInfoState>
      get copyWith => __$AdminInputHackathonInfoStateCopyWithImpl<
          _AdminInputHackathonInfoState>(this, _$identity);
}

abstract class _AdminInputHackathonInfoState
    implements AdminInputHackathonInfoState {
  const factory _AdminInputHackathonInfoState(
      {NotifierState notifierState,
      String title,
      String description,
      String theme,
      DateTime startDate,
      DateTime endDate,
      int span}) = _$_AdminInputHackathonInfoState;

  @override
  NotifierState get notifierState;
  @override
  String get title;
  @override
  String get description;
  @override
  String get theme;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  int get span;
  @override
  _$AdminInputHackathonInfoStateCopyWith<_AdminInputHackathonInfoState>
      get copyWith;
}
