import 'package:flutter/material.dart';
import 'package:morning_weakers/pages/home/home_page.dart';
import 'package:morning_weakers/pages/login/login_page.dart';
import 'package:morning_weakers/pages/input_participant_info/input_participant_Info_page.dart';
import 'package:morning_weakers/pages/new_profile/new_profile_page.dart';
import 'package:morning_weakers/pages/profile_detail/profile_detail_page.dart';
import 'package:morning_weakers/pages/admin_top/admin_top_page.dart';
import 'package:morning_weakers/pages/state_notifier_sample/state_notifier_sample_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AllPage extends StatelessWidget {
  FirebaseUser userData;
  AllPage({Key key, this.userData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> _pageList = [
      LoginPage(),
      InputParticipantInfoPage(),
      NewProfilePage(),
      ProfileDetailPage(),
      HomePage(),
      AdminTopPage(),
      SamplePage(),
    ];

    final List<String> _pageRouteNames = [
      '/login',
      '/inputParticipantInfo',
      '/newProfile',
      '/profileDetail',
      '/home',
      '/adminTopPage',
      '/sample',
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
