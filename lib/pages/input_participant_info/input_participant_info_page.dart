import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:morning_weakers/pages/input_participant_info/input_participant_info_controller.dart';
import 'package:morning_weakers/pages/input_participant_info/input_participant_info_state.dart';
import 'package:morning_weakers/pages/input_participant_info/widgets/desired_occupation.dart';
import 'package:morning_weakers/pages/input_participant_info/widgets/schedule_candidate.dart';
import 'package:morning_weakers/pages/input_participant_info/widgets/working_days.dart';
import 'package:morning_weakers/pages/input_participant_info/widgets/submit_btn.dart';

class InputParticipantInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('参加者情報入力'),
      ),
      body: StateNotifierProvider<InputParticipantInfoController, InputParticipantInfoState>(
        create: (_) => InputParticipantInfoController(),
        child: _inputParticipantInfo,
      ),
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
          ),
          SubmitBtn(),
        ],
      ),
    ),
  );
}
