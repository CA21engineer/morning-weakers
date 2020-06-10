import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:morning_weakers/models/hackathon/hackathon.dart';
import 'package:morning_weakers/models/models.dart';

User dummyUser({
  @Default('') String id,
  @Default('') String fullName,
  @Default('') String displayName,
  List<TechnicalStack> technicalStacks,
  @Default('') String githubAccount,
  @Default('') String twitterAccount,
  @Default('') String iconUrl,
}) =>
    User(
      id: id,
      fullName: fullName,
      displayName: displayName,
      technicalStacks: technicalStacks ?? [dummyTechnicalStack()],
      githubAccount: githubAccount,
      twitterAccount: twitterAccount,
      iconUrl: iconUrl,
    );

TechnicalStack dummyTechnicalStack({
  @Default('') String id,
  @Default(Stack.Android) Stack stack,
  @Default(Language.Kotlin) List<Language> languages,
  @Default(Proficiency.Good) Proficiency proficiency,
  @Default(1) int priority,
}) =>
    TechnicalStack(
      id: id,
      stack: stack,
      languages: languages,
      proficiency: proficiency,
      priority: priority,
    );

Participant dummyParticipant({
  @Default('') String id,
  User user,
  List<TechnicalStack> desiredOccupations,
  @Default(1) int workingDays,
  @Default('') String note,
  @Default(false) bool isAdmin,
}) =>
    Participant(
        id: id,
        user: user ?? dummyUser(),
        desiredOccupations: desiredOccupations ?? [dummyTechnicalStack()],
        workingDays: workingDays,
        note: note,
        isAdmin: isAdmin);

Hackathon dummyHackathon({
  @Default('') String id,
  @Default('') String title,
  @Default('') String description,
  @Default('') String theme,
  @Default('') String iconUrl,
  @Default('') String slackUrl,
  @Default('') String presentationUrl,
  DateTime startDate,
  DateTime endDate,
  @Default(1) int span,
  Questionnaire questionnaire,
  List<Participant> participants,
  List<Group> groups,
  List<Notification> notifications,
}) =>
    Hackathon(
      id: id,
      title: title,
      description: description,
      theme: theme,
      iconUrl: iconUrl,
      slackUrl: slackUrl,
      presentationUrl: presentationUrl,
      startDate: startDate ?? DateTime.now(),
      endDate: endDate ?? DateTime.now(),
      span: span,
      questionnaire: questionnaire ?? dummyQuestionnaire(),
      participants: participants ?? [dummyParticipant()],
      groups: groups ?? [dummyGroup()],
      notifications: notifications ?? [dummyNotification()],
    );

Notification dummyNotification({
  @Default('') String id,
  @Default('') String title,
  @Default('') String description,
  User publishedUser,
  DateTime createdAt,
  @Default(false) bool isImportant,
}) =>
    Notification(
      id: id,
      title: title,
      description: description,
      publishedUser: publishedUser ?? dummyUser(),
      createdAt: createdAt ?? DateTime.now(),
      isImportant: isImportant,
    );

Questionnaire dummyQuestionnaire({
  @Default('') String id,
  @Default('') String title,
  @Default('') String description,
  List<ScheduleCandidate> scheduleCandidates,
  List<TechnicalStack> desiredOccupations,
  @Default(1) int workingDays,
  @Default('') String note,
}) =>
    Questionnaire(
      id: id,
      title: title,
      description: description,
      scheduleCandidates: scheduleCandidates ?? [dummyScheduleCandidate()],
      desiredOccupations: desiredOccupations ?? [dummyTechnicalStack()],
      workingDays: workingDays,
      note: note,
    );

Group dummyGroup({
  @Default('') String id,
  @Default('') String groupName,
  @Default('') String githubUrl,
  @Default(['']) List<String> slideUrls,
  @Default(['']) List<String> otherUrls,
  @Default(['']) List<String> iconUrls,
  List<Participant> participants,
}) =>
    Group(
      id: id,
      groupName: groupName,
      githubUrl: githubUrl,
      slideUrls: slideUrls,
      otherUrls: otherUrls,
      iconUrls: iconUrls,
      participants: participants ?? [dummyParticipant()],
    );

ScheduleCandidate dummyScheduleCandidate({
  @Default('') String id,
  DateTime start,
  DateTime end,
}) =>
    ScheduleCandidate(
      id: id,
      start: start ?? DateTime.now(),
      end: end ?? DateTime.now(),
    );

Link dummyLink({
  @Default('') String id,
  @Default('') String title,
  @Default('') String url,
  @Default('') String iconUrl,
}) =>
    Link(
      id: id,
      title: title,
      url: url,
      iconUrl: iconUrl,
    );
