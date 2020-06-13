import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:morning_weakers/pages/input_participant_info/input_participant_info_controller.dart';

class SubmitBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: const Text('OK'),
      color: Theme.of(context).accentColor,
      onPressed: () async {
        await context.read<InputParticipantInfoController>().handlePostParticipantInfo();
      });
  }
}
