import 'package:flutter/material.dart';
import 'package:morning_weakers/pages/input_participant_info/widgets/desired_occupation.dart';
import 'package:morning_weakers/pages/input_participant_info/widgets/schedule_candidate.dart';
import 'package:morning_weakers/pages/input_participant_info/widgets/working_days.dart';
import 'package:firebase_auth/firebase_auth.dart';

class InputParticipantInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FirebaseUser userData;
    print('input:$userData');
    return Scaffold(
      appBar: AppBar(
        title: const Text('参加者アンケート'),
      ),
      body: _inputParticipantInfo,
    );
  }

  final Widget _inputParticipantInfo = Container(
    padding: const EdgeInsets.all(20),
    child: SingleChildScrollView(
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
    ),
  );
}
