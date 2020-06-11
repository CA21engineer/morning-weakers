import 'package:flutter/material.dart';
import 'package:morning_weakers/models/models.dart';
import 'package:morning_weakers/pages/state_notifier_sample/state_notifier_sample_controller.dart';
import 'package:morning_weakers/pages/state_notifier_sample/state_notifier_sample_state.dart';
import 'package:provider/provider.dart';

class SamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('${context.select<SampleState, int>((state) => state.count)}'),
            Text('${context.select<SampleState, String>((state) => state.user.fullName)}'),
            GestureDetector(
              onTap: () => context.read<SampleController>().handleClick(),
              child: const Icon(Icons.add),
            )
          ],
        ),
      ),
    );
  }
}
