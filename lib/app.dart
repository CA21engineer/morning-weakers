import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:morning_weakers/pages/all/all_page.dart';
import 'package:morning_weakers/pages/home/home_page.dart';
import 'package:morning_weakers/pages/input_participant_info/input_participant_info_page.dart';
import 'package:morning_weakers/pages/new_profile/new_profile_page.dart';
import 'package:morning_weakers/pages/profile_detail/profile_detail_page.dart';
import 'package:morning_weakers/pages/admin_top/admin_top_page.dart';
import 'package:morning_weakers/pages/state_notifier_sample/state_notifier_sample_controller.dart';
import 'package:morning_weakers/pages/state_notifier_sample/state_notifier_sample_page.dart';
import 'package:morning_weakers/pages/state_notifier_sample/state_notifier_sample_state.dart';
import 'package:morning_weakers/pages/state_management_sample/state_management_sample_page.dart';
import 'package:provider/provider.dart';

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
                builder: (_) => AllPage(),
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
            case '/stateManagementSample':
              return MaterialPageRoute<void>(
                builder: (_) => StateManagementSamplePage(),
              );
            default:
              throw UnimplementedError('Undefined route ${settings.name}');
          }
        },
      ),
    );
  }
}
