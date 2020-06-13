import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:morning_weakers/pages/admin_input_hackathon_info/admin_input_hackathon_info_state.dart';
import 'package:morning_weakers/pages/admin_input_hackathon_info/admin_input_hackathon_info_controller.dart';
import 'package:intl/intl.dart';

class DateListContainer extends StatelessWidget {
  const DateListContainer({this.stateOption});

  final StateOption stateOption;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
          '${stateOption == StateOption.StartDate ? '開始日' : '開始日'}: ${DateFormat('yyyy/MM/dd').format(context.select<AdminInputHackathonInfoState, DateTime>((state) => stateOption == StateOption.StartDate ? state.startDate : state.endDate))}'), // TODO: State.startDateを監視
      trailing: FlatButton(
        onPressed: () async => _selectDate(context, stateOption),
        child: const Text('変更'),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context, StateOption stateOption) async {
    final selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(DateTime.now().year),
      lastDate: DateTime(DateTime.now().year + 1),
    );
    if (selectedDate != null) {
      context.read<AdminInputHackathonInfoController>().setState(stateOption, null, selectedDate);
    }
  }
}
