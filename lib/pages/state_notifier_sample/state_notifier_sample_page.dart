import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:morning_weakers/models/models.dart';
import 'package:morning_weakers/pages/state_notifier_sample/state_notifier_sample_controller.dart';
import 'package:morning_weakers/pages/state_notifier_sample/state_notifier_sample_state.dart';
import 'package:provider/provider.dart';

class SamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<SampleController, SampleState>(
      create: (_) => SampleController(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Sample'),
        ),
        body: Center(
          child: Builder(builder: (context) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('${context.select<SampleState, int>((state) => state.count)}'),
                GestureDetector(
                  onTap: () => context.read<SampleController>().handleClick(),
                  child: const Icon(Icons.add),
                ),
                GestureDetector(
                  onTap: () => context.read<SampleController>().createHackathon(),
                  child: const Icon(Icons.create),
                )
              ],
            );
          }),
        ),
      ),
    );
  }
}
