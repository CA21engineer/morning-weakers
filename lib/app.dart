import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:morning_weakers/pages/all/all_page.dart';
import 'package:morning_weakers/pages/group_result/group_result_page.dart';
import 'package:morning_weakers/pages/login/login_page.dart';
import 'package:morning_weakers/pages/home/home_page.dart';
import 'package:morning_weakers/pages/input_participant_info/input_participant_info_page.dart';
import 'package:morning_weakers/pages/new_profile/new_profile_page.dart';
import 'package:morning_weakers/pages/profile_detail/profile_detail_page.dart';
import 'package:morning_weakers/pages/admin_top/admin_top_page.dart';
import 'package:morning_weakers/pages/state_notifier_sample/state_notifier_sample_controller.dart';
import 'package:morning_weakers/pages/state_notifier_sample/state_notifier_sample_page.dart';
import 'package:morning_weakers/pages/state_notifier_sample/state_notifier_sample_state.dart';
import 'package:morning_weakers/pages/admin_group_edit/admin_group_edit_page.dart';
import 'package:morning_weakers/pages/state_management_sample/state_management_sample_page.dart';
import 'package:provider/provider.dart';
import 'package:morning_weakers/core/dummy_data.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StateNotifierProvider<SampleController, SampleState>(
          create: (context) => SampleController(),
        )
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
                builder: (_) => const AllPage(),
              );
            case '/login':
              return MaterialPageRoute<void>(
                builder: (_) => const LoginPage(),
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
