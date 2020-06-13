import 'package:morning_weakers/models/hackathon/hackathon.dart';
import 'package:morning_weakers/models/models.dart';

User dummyUser({
  String id = 'dummy',
  String fullName = 'Full Name',
  String displayName = 'Display Name',
  List<TechnicalStack> technicalStacks,
  String githubAccount = 'ho2ri2s',
  String twitterAccount = '@hohohoris',
  String iconUrl = 'https://github.com/ho2ri2s.png?size=48',
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
  String id = 'dummy',
  Stack stack = Stack.Android,
  List<Language> languages,
  Proficiency proficiency = Proficiency.Good,
  int priority = 1,
}) =>
    TechnicalStack(
      id: id,
      stack: stack,
      languages: languages ?? [Language.Kotlin],
      proficiency: proficiency,
      priority: priority,
    );

Participant dummyParticipant({
  String id = 'dummy',
  User user,
  List<TechnicalStack> desiredOccupations,
  int workingDays = 1,
  String note = '備考欄だよ',
  bool isAdmin = false,
}) =>
    Participant(
      id: id,
      user: user ?? dummyUser(),
      desiredOccupations: desiredOccupations ?? [dummyTechnicalStack()],
      workingDays: workingDays,
      note: note,
      isAdmin: isAdmin,
    );

Hackathon dummyHackathon({
  String id = 'dummy',
  String title = 'CA21 hackathon',
  String description = 'CA21 hackathonだよよよよよよよよ',
  String theme = 'with コロナ, after コロナ',
  String iconUrl = 'https://github.com/fukami421.png?size=48',
  String slackUrl = 'slack_url',
  String presentationUrl = 'presentation_url',
  DateTime startDate,
  DateTime endDate,
  int span = 1,
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
  String id = 'dummy',
  String title = '今からHackathon始めるやで',
  String description = 'みんな起きてる？始めるやで',
  User publishedUser,
  DateTime createdAt,
  bool isImportant = false,
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
  String id = 'dummy',
  String title = 'CA21Hackathonアンケート',
  String description = 'アンケートの概要',
  List<ScheduleCandidate> scheduleCandidates,
  List<TechnicalStack> desiredOccupations,
  int workingDays = 1,
  String note = '備考欄だよ',
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
  String id = 'dummy',
  String groupName = 'morning weaker ~朝弱いけん~',
  String githubUrl = 'https://github.com/CA21engineer/morning-weakers',
  String slideUrl = 'slide_url',
  List<Link> otherUrls,
  String iconUrl = 'https://avatars1.githubusercontent.com/u/64519003?s=200&v=4',
  List<Participant> participants,
}) =>
    Group(
      id: id,
      groupName: groupName,
      githubUrl: githubUrl,
      slideUrl: slideUrl,
      otherUrls: otherUrls ?? [dummyLink()],
      iconUrl: iconUrl,
      participants: participants ?? [dummyParticipant()],
    );

ScheduleCandidate dummyScheduleCandidate({
  String id = 'dummy',
  DateTime start,
  DateTime end,
}) =>
    ScheduleCandidate(
      id: id,
      start: start ?? DateTime.now(),
      end: end ?? DateTime.now(),
    );

Link dummyLink({
  String id = 'dummy',
  String title = 'Notion',
  String url = 'https://www.notion.so/ho2ri2s/21hack01-Flutter-e0c721715bf64506b071fc90a3f3462e',
  String iconUrl = 'https://github.com/zoothezoo.png?size=48',
}) =>
    Link(
      id: id,
      title: title,
      url: url,
      iconUrl: iconUrl,
    );

List<Participant> dummyParticipants() =>
    List<Participant>.filled(
      7,
      dummyParticipant(
        user: dummyUser(
          technicalStacks: [dummyTechnicalStack(stack: Stack.iOS)],
        ),
      ),
    ) +
    List<Participant>.filled(
      5,
      dummyParticipant(
        user: dummyUser(
          technicalStacks: [dummyTechnicalStack(stack: Stack.Android)],
        ),
      ),
    ) +
    List<Participant>.filled(
      4,
      dummyParticipant(
          user: dummyUser(
        technicalStacks: [dummyTechnicalStack(stack: Stack.Web)],
      )),
    ) +
    List<Participant>.filled(
      3,
      dummyParticipant(
        user: dummyUser(
          technicalStacks: [dummyTechnicalStack(stack: Stack.Unity)],
        ),
      ),
    ) +
    List<Participant>.filled(
      8,
      dummyParticipant(
        user: dummyUser(
          technicalStacks: [dummyTechnicalStack(stack: Stack.Serverside)],
        ),
      ),
    );
