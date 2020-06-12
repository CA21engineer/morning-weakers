import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:morning_weakers/models/models.dart';
import 'package:morning_weakers/models/technical_stack/stack.dart' as stackFile;
import 'package:morning_weakers/core/dummy_data.dart';

class UserListContainer extends StatelessWidget {
  final List<Participant> _participants = [
    dummyParticipant(
      user: dummyUser(
          technicalStacks: [dummyTechnicalStack(stack: stackFile.Stack.iOS)]),
    ),
    dummyParticipant(
      user: dummyUser(
          technicalStacks: [dummyTechnicalStack(stack: stackFile.Stack.iOS)]),
    ),
    dummyParticipant(
      user: dummyUser(
          technicalStacks: [dummyTechnicalStack(stack: stackFile.Stack.iOS)]),
    ),
    dummyParticipant(
      user: dummyUser(
          technicalStacks: [dummyTechnicalStack(stack: stackFile.Stack.iOS)]),
    ),
    dummyParticipant(
      user: dummyUser(
          technicalStacks: [dummyTechnicalStack(stack: stackFile.Stack.iOS)]),
    ),
    dummyParticipant(
      user: dummyUser(
          technicalStacks: [dummyTechnicalStack(stack: stackFile.Stack.iOS)]),
    ),
    dummyParticipant(
      user: dummyUser(
          technicalStacks: [dummyTechnicalStack(stack: stackFile.Stack.iOS)]),
    ),
    dummyParticipant(
      user: dummyUser(technicalStacks: [
        dummyTechnicalStack(stack: stackFile.Stack.Android)
      ]),
    ),
    dummyParticipant(
      user: dummyUser(technicalStacks: [
        dummyTechnicalStack(stack: stackFile.Stack.Android)
      ]),
    ),
    dummyParticipant(
      user: dummyUser(technicalStacks: [
        dummyTechnicalStack(stack: stackFile.Stack.Android)
      ]),
    ),
    dummyParticipant(
      user: dummyUser(technicalStacks: [
        dummyTechnicalStack(stack: stackFile.Stack.Android)
      ]),
    ),
    dummyParticipant(
      user: dummyUser(technicalStacks: [
        dummyTechnicalStack(stack: stackFile.Stack.Android)
      ]),
    ),
    dummyParticipant(
      user: dummyUser(
          technicalStacks: [dummyTechnicalStack(stack: stackFile.Stack.Web)]),
    ),
    dummyParticipant(
      user: dummyUser(
          technicalStacks: [dummyTechnicalStack(stack: stackFile.Stack.Web)]),
    ),
    dummyParticipant(
      user: dummyUser(
          technicalStacks: [dummyTechnicalStack(stack: stackFile.Stack.Web)]),
    ),
    dummyParticipant(
      user: dummyUser(
          technicalStacks: [dummyTechnicalStack(stack: stackFile.Stack.Web)]),
    ),
    dummyParticipant(
      user: dummyUser(
          technicalStacks: [dummyTechnicalStack(stack: stackFile.Stack.Unity)]),
    ),
    dummyParticipant(
      user: dummyUser(
          technicalStacks: [dummyTechnicalStack(stack: stackFile.Stack.Unity)]),
    ),
    dummyParticipant(
      user: dummyUser(
          technicalStacks: [dummyTechnicalStack(stack: stackFile.Stack.Unity)]),
    ),
    dummyParticipant(
      user: dummyUser(technicalStacks: [
        dummyTechnicalStack(stack: stackFile.Stack.Serverside)
      ]),
    ),
    dummyParticipant(
      user: dummyUser(technicalStacks: [
        dummyTechnicalStack(stack: stackFile.Stack.Serverside)
      ]),
    ),
    dummyParticipant(
      user: dummyUser(technicalStacks: [
        dummyTechnicalStack(stack: stackFile.Stack.Serverside)
      ]),
    ),
    dummyParticipant(
      user: dummyUser(technicalStacks: [
        dummyTechnicalStack(stack: stackFile.Stack.Serverside)
      ]),
    ),
    dummyParticipant(
      user: dummyUser(technicalStacks: [
        dummyTechnicalStack(stack: stackFile.Stack.Serverside)
      ]),
    ),
    dummyParticipant(
      user: dummyUser(technicalStacks: [
        dummyTechnicalStack(stack: stackFile.Stack.Serverside)
      ]),
    ),
    dummyParticipant(
      user: dummyUser(technicalStacks: [
        dummyTechnicalStack(stack: stackFile.Stack.Serverside)
      ]),
    ),
    dummyParticipant(
      user: dummyUser(technicalStacks: [
        dummyTechnicalStack(stack: stackFile.Stack.Serverside)
      ]),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        // ここら辺でparticipantsの値をstateから参照して定数に入れる
        return Container(
          child: Card(
            child: ListTile(
              // state.participantsを参照
              title: Text(_participants[index].user.displayName),
              subtitle: Text(
                _participants[index]
                    .user
                    .technicalStacks
                    .getCombinedLanguageText(),
              ),
              trailing: const Text('チーム1'), //どのチームに属するのかstateを参照
            ),
          ),
        );
      },
      itemCount: _participants.length,
    );
  }
}
