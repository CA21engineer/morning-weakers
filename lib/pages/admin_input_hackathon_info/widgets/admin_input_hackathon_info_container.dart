import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:morning_weakers/pages/admin_input_hackathon_info/admin_input_hackathon_info_controller.dart';
import 'package:morning_weakers/pages/admin_input_hackathon_info/widgets/date_list_container.dart';
import 'package:morning_weakers/pages/admin_input_hackathon_info/widgets/text_input_container.dart';
import 'package:morning_weakers/pages/admin_input_hackathon_info/admin_input_hackathon_info_state.dart';
import 'package:morning_weakers/models/notifier_state.dart';
import 'package:provider/provider.dart';

class AdminInputHackathonInfoContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<List<Object>> formList = [
      ['ハッカソン名', StateOption.Title, 1],
      ['概要', StateOption.Theme, 1],
      ['ハッカソン名', StateOption.Description, 4],
    ];
    if (context.select<AdminInputHackathonInfoState, NotifierState>((state) => state.notifierState) == NotifierState.loading) {
      return const Center(child: CircularProgressIndicator());
    } else {
      return SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 32, right: 32, top: 12, bottom: 40),
          child: Column(
            children: <Widget>[
              Column(
                children: formList
                    .map(
                      (element) => TextInputContainer(
                        labelText: element[0] as String,
                        stateOption: element[1] as StateOption,
                        maxLines: element[2] as int,
                      ),
                    )
                    .toList(),
              ),
              const DateListContainer(stateOption: StateOption.StartDate),
              const Divider(),
              const DateListContainer(stateOption: StateOption.EndDate),
              const Divider(),
              SizedBox(
                width: double.infinity,
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 16),
                  child: RaisedButton(
                    child: const Text('入力を確定する'),
                    color: Theme.of(context).accentColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    onPressed: () async => context.read<AdminInputHackathonInfoController>().handleCreateHackathon(),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}
