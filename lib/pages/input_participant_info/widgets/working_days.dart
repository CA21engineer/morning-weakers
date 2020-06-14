import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:morning_weakers/pages/input_participant_info/input_participant_info_controller.dart';

class WorkingDays extends StatelessWidget {
  final List<String> workingDays = ['1', '2', '3', '4', '5'];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: <Widget>[
          const Text('稼働可能日数(目安でOKです😃)'),
          Column(
            children: workingDays.map(
              (workingDay) => ListTile(
                title: Text(workingDay),
                leading: Radio(
                  value: workingDay,
                  activeColor: Theme.of(context).primaryColor,
                ),
              ),
            ).toList()
          )
        ]
      ),
    );
  }
}
