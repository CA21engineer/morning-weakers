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
      {String id,
      @required String title,
      @required String description,
      @required String theme,
      @JsonKey(name: 'icon_url') String iconUrl,
      @JsonKey(name: 'slack_url') String slackUrl,
      @JsonKey(name: 'presentation_url') String presentationUrl,
      @required @JsonKey(name: 'start_date') DateTime startDate,
      @required @JsonKey(name: 'end_date') DateTime endDate,
      @required int span,
      @QuestionnaireConverter() Questionnaire questionnaire,
      @required @ParticipantConverter() List<Participant> participants,
      @GroupConverter() List<Group> groups,
      @NotificationConverter() List<Notification> notifications}) {
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
      span: span,
      questionnaire: questionnaire,
      participants: participants,
      groups: groups,
      notifications: notifications,
    );
  }
}

// ignore: unused_element
const $Hackathon = _$HackathonTearOff();

mixin _$Hackathon {
  String get id;
  String get title;
  String get description;
  String get theme;
  @JsonKey(name: 'icon_url')
  String get iconUrl;
  @JsonKey(name: 'slack_url')
  String get slackUrl;
  @JsonKey(name: 'presentation_url')
  String get presentationUrl;
  @JsonKey(name: 'start_date')
  DateTime get startDate;
  @JsonKey(name: 'end_date')
  DateTime get endDate;
  int get span;
  @QuestionnaireConverter()
  Questionnaire get questionnaire;
  @ParticipantConverter()
  List<Participant> get participants;
  @GroupConverter()
  List<Group> get groups;
  @NotificationConverter()
  List<Notification> get notifications;

  Map<String, dynamic> toJson();
  $HackathonCopyWith<Hackathon> get copyWith;
}

abstract class $HackathonCopyWith<$Res> {
  factory $HackathonCopyWith(Hackathon value, $Res Function(Hackathon) then) =
      _$HackathonCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      String description,
      String theme,
      @JsonKey(name: 'icon_url') String iconUrl,
      @JsonKey(name: 'slack_url') String slackUrl,
      @JsonKey(name: 'presentation_url') String presentationUrl,
      @JsonKey(name: 'start_date') DateTime startDate,
      @JsonKey(name: 'end_date') DateTime endDate,
      int span,
      @QuestionnaireConverter() Questionnaire questionnaire,
      @ParticipantConverter() List<Participant> participants,
      @GroupConverter() List<Group> groups,
      @NotificationConverter() List<Notification> notifications});

  $QuestionnaireCopyWith<$Res> get questionnaire;
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
    Object span = freezed,
    Object questionnaire = freezed,
    Object participants = freezed,
    Object groups = freezed,
    Object notifications = freezed,
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
      span: span == freezed ? _value.span : span as int,
      questionnaire: questionnaire == freezed
          ? _value.questionnaire
          : questionnaire as Questionnaire,
      participants: participants == freezed
          ? _value.participants
          : participants as List<Participant>,
      groups: groups == freezed ? _value.groups : groups as List<Group>,
      notifications: notifications == freezed
          ? _value.notifications
          : notifications as List<Notification>,
    ));
  }

  @override
  $QuestionnaireCopyWith<$Res> get questionnaire {
    if (_value.questionnaire == null) {
      return null;
    }
    return $QuestionnaireCopyWith<$Res>(_value.questionnaire, (value) {
      return _then(_value.copyWith(questionnaire: value));
    });
  }
}

abstract class _$HackathonCopyWith<$Res> implements $HackathonCopyWith<$Res> {
  factory _$HackathonCopyWith(
          _Hackathon value, $Res Function(_Hackathon) then) =
      __$HackathonCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      String description,
      String theme,
      @JsonKey(name: 'icon_url') String iconUrl,
      @JsonKey(name: 'slack_url') String slackUrl,
      @JsonKey(name: 'presentation_url') String presentationUrl,
      @JsonKey(name: 'start_date') DateTime startDate,
      @JsonKey(name: 'end_date') DateTime endDate,
      int span,
      @QuestionnaireConverter() Questionnaire questionnaire,
      @ParticipantConverter() List<Participant> participants,
      @GroupConverter() List<Group> groups,
      @NotificationConverter() List<Notification> notifications});

  @override
  $QuestionnaireCopyWith<$Res> get questionnaire;
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
    Object span = freezed,
    Object questionnaire = freezed,
    Object participants = freezed,
    Object groups = freezed,
    Object notifications = freezed,
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
      span: span == freezed ? _value.span : span as int,
      questionnaire: questionnaire == freezed
          ? _value.questionnaire
          : questionnaire as Questionnaire,
      participants: participants == freezed
          ? _value.participants
          : participants as List<Participant>,
      groups: groups == freezed ? _value.groups : groups as List<Group>,
      notifications: notifications == freezed
          ? _value.notifications
          : notifications as List<Notification>,
    ));
  }
}

@JsonSerializable()
class _$_Hackathon with DiagnosticableTreeMixin implements _Hackathon {
  const _$_Hackathon(
      {this.id,
      @required this.title,
      @required this.description,
      @required this.theme,
      @JsonKey(name: 'icon_url') this.iconUrl,
      @JsonKey(name: 'slack_url') this.slackUrl,
      @JsonKey(name: 'presentation_url') this.presentationUrl,
      @required @JsonKey(name: 'start_date') this.startDate,
      @required @JsonKey(name: 'end_date') this.endDate,
      @required this.span,
      @QuestionnaireConverter() this.questionnaire,
      @required @ParticipantConverter() this.participants,
      @GroupConverter() this.groups,
      @NotificationConverter() this.notifications})
      : assert(title != null),
        assert(description != null),
        assert(theme != null),
        assert(startDate != null),
        assert(endDate != null),
        assert(span != null),
        assert(participants != null);

  factory _$_Hackathon.fromJson(Map<String, dynamic> json) =>
      _$_$_HackathonFromJson(json);

  @override
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
  @JsonKey(name: 'slack_url')
  final String slackUrl;
  @override
  @JsonKey(name: 'presentation_url')
  final String presentationUrl;
  @override
  @JsonKey(name: 'start_date')
  final DateTime startDate;
  @override
  @JsonKey(name: 'end_date')
  final DateTime endDate;
  @override
  final int span;
  @override
  @QuestionnaireConverter()
  final Questionnaire questionnaire;
  @override
  @ParticipantConverter()
  final List<Participant> participants;
  @override
  @GroupConverter()
  final List<Group> groups;
  @override
  @NotificationConverter()
  final List<Notification> notifications;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Hackathon(id: $id, title: $title, description: $description, theme: $theme, iconUrl: $iconUrl, slackUrl: $slackUrl, presentationUrl: $presentationUrl, startDate: $startDate, endDate: $endDate, span: $span, questionnaire: $questionnaire, participants: $participants, groups: $groups, notifications: $notifications)';
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
      ..add(DiagnosticsProperty('span', span))
      ..add(DiagnosticsProperty('questionnaire', questionnaire))
      ..add(DiagnosticsProperty('participants', participants))
      ..add(DiagnosticsProperty('groups', groups))
      ..add(DiagnosticsProperty('notifications', notifications));
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
            (identical(other.span, span) ||
                const DeepCollectionEquality().equals(other.span, span)) &&
            (identical(other.questionnaire, questionnaire) ||
                const DeepCollectionEquality()
                    .equals(other.questionnaire, questionnaire)) &&
            (identical(other.participants, participants) ||
                const DeepCollectionEquality()
                    .equals(other.participants, participants)) &&
            (identical(other.groups, groups) ||
                const DeepCollectionEquality().equals(other.groups, groups)) &&
            (identical(other.notifications, notifications) ||
                const DeepCollectionEquality()
                    .equals(other.notifications, notifications)));
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
      const DeepCollectionEquality().hash(span) ^
      const DeepCollectionEquality().hash(questionnaire) ^
      const DeepCollectionEquality().hash(participants) ^
      const DeepCollectionEquality().hash(groups) ^
      const DeepCollectionEquality().hash(notifications);

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
          {String id,
          @required String title,
          @required String description,
          @required String theme,
          @JsonKey(name: 'icon_url') String iconUrl,
          @JsonKey(name: 'slack_url') String slackUrl,
          @JsonKey(name: 'presentation_url') String presentationUrl,
          @required @JsonKey(name: 'start_date') DateTime startDate,
          @required @JsonKey(name: 'end_date') DateTime endDate,
          @required int span,
          @QuestionnaireConverter() Questionnaire questionnaire,
          @required @ParticipantConverter() List<Participant> participants,
          @GroupConverter() List<Group> groups,
          @NotificationConverter() List<Notification> notifications}) =
      _$_Hackathon;

  factory _Hackathon.fromJson(Map<String, dynamic> json) =
      _$_Hackathon.fromJson;

  @override
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
  @JsonKey(name: 'slack_url')
  String get slackUrl;
  @override
  @JsonKey(name: 'presentation_url')
  String get presentationUrl;
  @override
  @JsonKey(name: 'start_date')
  DateTime get startDate;
  @override
  @JsonKey(name: 'end_date')
  DateTime get endDate;
  @override
  int get span;
  @override
  @QuestionnaireConverter()
  Questionnaire get questionnaire;
  @override
  @ParticipantConverter()
  List<Participant> get participants;
  @override
  @GroupConverter()
  List<Group> get groups;
  @override
  @NotificationConverter()
  List<Notification> get notifications;
  @override
  _$HackathonCopyWith<_Hackathon> get copyWith;
}
