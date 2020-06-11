import 'package:flutter/material.dart';
import 'package:morning_weakers/pages/state_management_sample/state_management_sample_controller.dart';
import 'package:morning_weakers/pages/state_management_sample/state_management_sample_state.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:morning_weakers/models/notifier_state.dart';
import 'package:provider/provider.dart';
import 'package:morning_weakers/repository/state_management_sample_repository.dart';

class StateManagementSamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('State管理'),
      ),
      body: Provider(
        create: (_) => StateManagementSampleRepository(),
        child: StateNotifierProvider<StateManagementSampleController,
            StateManagementSampleState>(
          create: (_) => StateManagementSampleController(),
          child: StateManagementSampleContainer(),
        ),
      ),
    );
  }
}

class StateManagementSampleContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (context.select<StateManagementSampleState, NotifierState>(
            (state) => state.notifierState) ==
        NotifierState.loading) {
      return const Center(child: CircularProgressIndicator());
    } else {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text('読み込み終了'),
            FlatButton(
              child: const Text('もう一回読み込んじゃお！'),
              color: Colors.blue,
              onPressed: () => context
                  .read<StateManagementSampleController>()
                  .getProfileDetail(),
            ),
          ],
        ),
      );
    }
  }
}
