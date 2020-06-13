import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:morning_weakers/infrastructure/firebase_auth_service.dart';
import 'package:morning_weakers/models/models.dart';
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
import 'package:morning_weakers/pages/admin_input_hackathon_info/admin_input_hackathon_info_page.dart';
import 'package:morning_weakers/repositories/group_repository.dart';
import 'package:morning_weakers/repositories/hackathon_repository.dart';
import 'package:morning_weakers/repositories/notification_repository.dart';
import 'package:morning_weakers/repositories/participant_repository.dart';
import 'package:morning_weakers/repositories/questionnaire_repository.dart';
import 'package:morning_weakers/repositories/user_repository.dart';
import 'package:provider/provider.dart';
import 'package:morning_weakers/core/dummy_data.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<FirebaseAuthService, AuthState>(
        create: (_) => FirebaseAuthService(),
        child: Builder(builder: (context) {
          return MultiProvider(
            providers: [
              // TODO: この書き方はアンチパターンなのか調べる
              Provider<HackathonRepository>.value(
                value: HackathonRepository(context.select<AuthState, String>((state) => state.firebaseUserId)),
              ),
              Provider<UserRepository>.value(
                value: UserRepository(context.select<AuthState, String>((state) => state.firebaseUserId)),
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
                  case '/adminInputHackathonInfo':
                    return MaterialPageRoute<void>(
                      builder: (_) => AdminInputHackathonInfoPage(),
                    );
                  default:
                    throw UnimplementedError('Undefined route ${settings.name}');
                }
              },
            ),
          );
        }));
  }
}
