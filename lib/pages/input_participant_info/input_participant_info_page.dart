import 'package:flutter/material.dart';
import 'package:morning_weakers/pages/input_participant_info/widgets/desired_occupation.dart';
import 'package:morning_weakers/pages/input_participant_info/widgets/schedule_candidate.dart';
import 'package:morning_weakers/pages/input_participant_info/widgets/working_days.dart';

class InputParticipantInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('参加者情報入力'),
      ),
      body: _inputParticipantInfo,
    );
  }

  final Widget _inputParticipantInfo = Container(
    padding: const EdgeInsets.all(20),
    child: Column(
      children: <Widget>[
        DesiredOccupation(),
        ScheduleCandidate(),
        WorkingDays(),
        TextFormField(
          decoration: const InputDecoration(
            labelText: '備考欄'
          ),
        )
      ],
    ),
  );
}
