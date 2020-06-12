import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:morning_weakers/models/models.dart';
import 'package:morning_weakers/models/technical_stack/technical_stack.dart';
import 'package:morning_weakers/core/dummy_data.dart';

class UserListContainer extends StatelessWidget {
  final List<Participant> _participants = [
    dummyParticipant(
      user: dummyUser(
        technicalStacks: [
          dummyTechnicalStack(),
          dummyTechnicalStack(),
          dummyTechnicalStack(),
        ],
      ),
    ),
    dummyParticipant(),
    dummyParticipant(),
    dummyParticipant(),
    dummyParticipant(),
    dummyParticipant(),
    dummyParticipant(),
    dummyParticipant(),
    dummyParticipant(),
    dummyParticipant(
      user: dummyUser(
        technicalStacks: [
          dummyTechnicalStack(),
          dummyTechnicalStack(),
          dummyTechnicalStack(),
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          child: Card(
            child: ListTile(
              // state.participantsを監視
              title: Text(_participants[index].user.displayName),
              subtitle: Text(
                _participants[index]
                    .user
                    .technicalStacks
                    .getCombinedLanguageText(),
              ),
              trailing: Column(
                children: <Widget>[
                  const Text('チーム'),
                  SizedBox(
                    height: 30,
                    width: 30,
                    child: GestureDetector(
                      onTap: () => _showModalPicker(context, index),
                      child: const AbsorbPointer(
                        child: TextField(
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      itemCount: _participants.length,
    );
  }

  void _showModalPicker(BuildContext context, int index) {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height / 3,
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: CupertinoPicker(
              itemExtent: 40,
              children: [1, 2, 3]
                  .map<Widget>((element) => Text(element.toString()))
                  .toList(), // (state.チーム数)を監視してListにmap
              onSelectedItemChanged: (index) {
                // stateに変更を伝える(引数はindex)
              },
            ),
          ),
        );
      },
    );
  }
}
