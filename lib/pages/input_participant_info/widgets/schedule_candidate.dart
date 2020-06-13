import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:morning_weakers/pages/input_participant_info/input_participant_info_controller.dart';

class ScheduleCandidate extends StatelessWidget {
  final List<String> scheduleCandidates = [
    '5/23(土)開始〜5/30(土)発表',
    '5/24(日)開始〜5/31(日)発表',
    '5/30(土)開始〜6/6(土)発表',
    '5/31(日)開始〜6/7(日)発表'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: <Widget>[
          const Text('参加可能日程(複数選択可)'),
          Column(
            children: scheduleCandidates.map(
              (scheduleCandidate) => CheckboxListTile(
              value: false,
//              onChanged: context.read<InputParticipantInfoController>().setDesiredOccupationsState(value),
              activeColor: Theme.of(context).primaryColor,
              title: Text(scheduleCandidate),
              ),
            ).toList()
          )
        ]
      ),
    );
  }
}
