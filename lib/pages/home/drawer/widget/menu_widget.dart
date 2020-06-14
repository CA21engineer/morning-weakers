import 'package:flutter/material.dart';
import 'package:morning_weakers/pages/input_participant_info/input_participant_info_page.dart';

class Menu extends StatelessWidget {
  final List<List<String>> _menus = [
    ['All Groups', '/navigation'],
    ['All Participants', '/navigation'],
    ['Edit My Info', '/navigation'],
    ['Questionnaire', '/navigation'],
  ];

  @override
  Widget build(BuildContext context) {
  return Column(
      children: _menus
          .map(
            (buttonTitle) => ListTile(
          title: Text(
            buttonTitle[0],
            style: const TextStyle(fontSize: 15),
          ),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {
            // TODO: 各リストに応じた処理を記述
            Navigator.push<void>(context, MaterialPageRoute(builder: (_) => InputParticipantInfoPage()));
          },
        ),
      )
          .toList());
  }
}