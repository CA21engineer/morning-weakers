import 'package:flutter/material.dart';
import 'package:morning_weakers/pages/state_management_sample/state_management_sample_controller.dart';
import 'package:morning_weakers/pages/state_management_sample/state_management_sample_state.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:morning_weakers/pages/state_management_sample/widgets/state_management_sample_container.dart';
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
