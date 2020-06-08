import 'package:flutter/material.dart';
import 'package:morning_weakers/pages/all/all_page.dart';
import 'package:morning_weakers/pages/input_participant_info/input_participant_Info_page.dart';
import 'package:morning_weakers/pages/new_profile/new_profile_page.dart';
import 'package:morning_weakers/pages/profile_detail/profile_detail_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
          default:
            throw UnimplementedError('Undefined route ${settings.name}');
        }
      },
    );
  }
}
