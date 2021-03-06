import 'package:flutter/material.dart';
import 'package:morning_weakers/pages/group_result/group_result_page.dart';
import 'package:morning_weakers/pages/home/home_page.dart';
import 'package:morning_weakers/pages/login/login_page.dart';
import 'package:morning_weakers/pages/login/logout_page.dart';
import 'package:morning_weakers/pages/input_participant_info/input_participant_info_page.dart';
import 'package:morning_weakers/pages/new_profile/new_profile_page.dart';
import 'package:morning_weakers/pages/profile_detail/profile_detail_page.dart';
import 'package:morning_weakers/pages/admin_top/admin_top_page.dart';
import 'package:morning_weakers/pages/state_notifier_sample/state_notifier_sample_page.dart';
import 'package:morning_weakers/pages/admin_group_edit/admin_group_edit_page.dart';
import 'package:morning_weakers/pages/state_management_sample/state_management_sample_page.dart';
import 'package:morning_weakers/pages/admin_input_hackathon_info/admin_input_hackathon_info_page.dart';
import 'package:morning_weakers/core/dummy_data.dart';

class AllPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Widget> _pageList = [
      LoginPage(),
      LogoutPage(),
      InputParticipantInfoPage(),
      NewProfilePage(),
      ProfileDetailPage(),
      HomePage(),
      AdminTopPage(),
      SamplePage(),
      StateManagementSamplePage(),
      GroupResultPage(),
      AdminGroupEditPage(dummyParticipants()),
      AdminInputHackathonInfoPage(),
    ];

    final List<String> _pageRouteNames = [
      '/login',
      '/logout',
      '/inputParticipantInfo',
      '/newProfile',
      '/profileDetail',
      '/home',
      '/adminTopPage',
      '/sample',
      '/stateManagementSample',
      '/groupResultPage',
      '/adminGroupEditPage',
      '/adminInputHackathonInfo',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('All page'),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Container(
              margin: const EdgeInsets.all(3),
              child: Card(
                child: ListTile(
                  title: Text(_pageList[index].toString()),
                  onTap: () {
                    Navigator.pushNamed(context, _pageRouteNames[index]);
                  },
                ),
              ));
        },
        itemCount: _pageList.length,
      ),
    );
  }
}
