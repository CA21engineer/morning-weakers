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
            return SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('${context.select<SampleState, int>((state) => state.count)}'),
                  GestureDetector(
                    onTap: () => context.read<SampleController>().handleClick(),
                    child: const Icon(Icons.add),
                  ),
                  Text(
                    'createHackathon ${context.select<SampleState, Hackathon>((state) => state.hackathon)?.toString() ?? 'null'}',
                  ),
                  GestureDetector(
                    onTap: () => context.read<SampleController>().createHackathon(),
                    child: const Icon(Icons.add),
                  ),
                  Text(
                    'getHackathon ${context.select<SampleState, Hackathon>((state) => state.hackathon)?.toString() ?? 'null'}',
                  ),
                  GestureDetector(
                    onTap: () => context.read<SampleController>().getHackathon(),
                    child: const Icon(Icons.add),
                  ),
                  Text(
                    'getMyJoined ${context.select<SampleState, Joined>((state) => state.joined)?.toString() ?? 'null'}',
                  ),
                  GestureDetector(
                    onTap: () => context.read<SampleController>().getMyJoined(),
                    child: const Icon(Icons.add),
                  ),
                  const Text('joinHackathon'),
                  GestureDetector(
                    onTap: () => context.read<SampleController>().joinHackathon(),
                    child: const Icon(Icons.add),
                  ),
                  const Text('createQuestionnaire'),
                  GestureDetector(
                    onTap: () => context.read<SampleController>().createQuestionnaire(),
                    child: const Icon(Icons.add),
                  ),
                  Text(
                    'getParticipants ${context.select<SampleState, List<Participant>>((state) => state.participants)?.toString() ?? 'null'}',
                  ),
                  GestureDetector(
                    onTap: () => context.read<SampleController>().getParticipants(),
                    child: const Icon(Icons.add),
                  ),
                  Text(
                    'getGroups ${context.select<SampleState, List<Group>>((state) => state.groups)?.toString() ?? 'null'}',
                  ),
                  GestureDetector(
                    onTap: () => context.read<SampleController>().getGroups(),
                    child: const Icon(Icons.add),
                  ),
                  const Text('createGroups'),
                  GestureDetector(
                    onTap: () => context.read<SampleController>().createGroups(),
                    child: const Icon(Icons.add),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
