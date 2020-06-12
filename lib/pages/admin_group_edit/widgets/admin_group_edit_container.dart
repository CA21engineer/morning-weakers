import 'package:flutter/material.dart';
import 'package:morning_weakers/pages/admin_group_edit/widgets/total_number_container.dart';
import 'package:morning_weakers/pages/admin_group_edit/widgets/one_team_number_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:morning_weakers/models/models.dart';
import 'package:morning_weakers/models/technical_stack/technical_stack.dart';
import 'package:morning_weakers/core/dummy_data.dart';

class AdminGroupEditContainer extends StatelessWidget {
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
    return Container(
      padding: const EdgeInsets.only(left: 32, right: 32, top: 12, bottom: 40),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const TotalNumberContainer(totalNumber: 12),
            const Divider(),
            const OneTeamNumberContainer(
              memberNumber: 6,
              teamNumber: 2,
              pickerList: [1, 2],
            ),
            const Divider(),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  child: Card(
                    child: ListTile(
                      title: Text(_participants[index].user.displayName),
                      subtitle: Text(
                        _participants[index]
                            .user
                            .technicalStacks
                            .getCombinedLanguageText(),
                      ),
                      trailing: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: <Widget>[
                          const Text('チーム'),
                          SizedBox(
                            height: 30,
                            width: 30,
                            child: GestureDetector(
                              onTap: () => _showModalPicker(context),
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
            ),
            SizedBox(
              width: double.infinity,
              child: RaisedButton(
                child: const Text('チームを確定する'),
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showModalPicker(BuildContext context) {
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
                  .toList(),
              onSelectedItemChanged: (index) {
                // stateに変更を伝える
              },
            ),
          ),
        );
      },
    );
  }
}

//最低人数を入力する欄がある。(デフォルトは、(全体の人数 // 2))
//ex. 全体の人数: 12
//チーム数 => (12 // 2) = 6チーム
//ex. 全体の人数: 13, 最低人数: 3
//チーム数 => (12 // 2) = 6チーム

//理由:
//- どの人数でも保証される
//- 全体の人数が1人の場合は選択肢がなくなるのでOk

//これによってViewの変化はないが、チームの選択肢の数が変化する

//チーム数 = (全体の数 // 最低人数)
//ex. 全体の人数: 12, 最低人数: 3
//チーム数 => (12 // 3) = 4チーム

//チーム数 = (全体の数 // 最低人数)
//ex. 全体の人数: 13, 最低人数: 3
//チーム数 => (13 // 3) = 4チーム
