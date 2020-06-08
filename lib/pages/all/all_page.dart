import 'package:flutter/material.dart';
import 'package:morning_weakers/pages/input_participant_info/input_participant_info_page.dart';
import 'package:morning_weakers/pages/new_profile/new_profile_page.dart';
import 'package:morning_weakers/pages/profile_detail/profile_detail_page.dart';

class AllPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> _pageList = [
      InputParticipantInfoPage(),
      NewProfilePage(),
      ProfileDetailPage(),
    ];

    List<String> _pageRouteNames = [
      '/inputParticipantInfo',
      '/newProfile',
      '/profileDetail',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('All page'),
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
