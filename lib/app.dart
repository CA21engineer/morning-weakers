import 'package:flutter/material.dart';
import 'package:morning_weakers/pages/all/all_page.dart';
import 'package:morning_weakers/pages/group_result/group_result_page.dart';
import 'package:morning_weakers/pages/login/login_page.dart';
import 'package:morning_weakers/pages/login/logout_page.dart';
import 'package:morning_weakers/pages/home/home_page.dart';
import 'package:morning_weakers/pages/input_participant_info/input_participant_info_page.dart';
import 'package:morning_weakers/pages/new_profile/new_profile_page.dart';
import 'package:morning_weakers/pages/profile_detail/profile_detail_page.dart';
import 'package:morning_weakers/pages/admin_top/admin_top_page.dart';
import 'package:morning_weakers/pages/state_notifier_sample/state_notifier_sample_page.dart';
import 'package:morning_weakers/pages/admin_group_edit/admin_group_edit_page.dart';
import 'package:morning_weakers/pages/state_management_sample/state_management_sample_page.dart';
import 'package:morning_weakers/repositories/group_repository.dart';
import 'package:morning_weakers/repositories/hackathon_repository.dart';
import 'package:morning_weakers/repositories/notification_repository.dart';
import 'package:morning_weakers/repositories/participant_repository.dart';
import 'package:morning_weakers/repositories/questionnaire_repository.dart';
import 'package:provider/provider.dart';
import 'package:morning_weakers/core/dummy_data.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<HackathonRepository>.value(
          value: HackathonRepository(),
        ),
        Provider<QuestionnaireRepository>.value(
          value: QuestionnaireRepository(),
        ),
        Provider<ParticipantRepository>.value(
          value: ParticipantRepository(),
        ),
        Provider<GroupRepository>.value(
          value: GroupRepository(),
        ),
        Provider<NotificationRepository>.value(
          value: NotificationRepository(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.blueAccent,
          accentColor: Colors.cyan[600],
        ),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: (RouteSettings settings) {
          switch (settings.name) {
            case '/':
              return MaterialPageRoute<void>(
                builder: (_) => AllPage(),
              );
            case '/login':
              return MaterialPageRoute<void>(
                builder: (_) => LoginPage(),
              );
            case '/logout':
              return MaterialPageRoute<void>(
                builder: (_) => LogoutPage(),
              );
            case '/inputParticipantInfo':
              return MaterialPageRoute<void>(
                builder: (_) => InputParticipantInfoPage(),
              );
            case '/newProfile':
              return MaterialPageRoute<void>(
                builder: (_) => NewProfilePage(),
              );
            case '/profileDetail':
              return MaterialPageRoute<void>(
                builder: (_) => ProfileDetailPage(),
              );
            case '/sample':
              return MaterialPageRoute<void>(
                builder: (_) => SamplePage(),
              );
            case '/adminTopPage':
              return MaterialPageRoute<void>(
                builder: (_) => AdminTopPage(),
              );
            case '/home':
              return MaterialPageRoute<void>(
                builder: (_) => HomePage(),
              );
            case '/adminGroupEditPage':
              return MaterialPageRoute<void>(
                builder: (_) => AdminGroupEditPage(dummyParticipants()),
              );
            case '/stateManagementSample':
              return MaterialPageRoute<void>(
                builder: (_) => StateManagementSamplePage(),
              );
            case '/groupResultPage':
              return MaterialPageRoute<void>(
                builder: (_) => GroupResultPage(),
              );
            default:
              throw UnimplementedError('Undefined route ${settings.name}');
          }
        },
      ),
    );
  }
}
