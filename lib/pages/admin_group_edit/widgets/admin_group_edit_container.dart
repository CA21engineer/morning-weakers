import 'package:flutter/material.dart';
import 'package:morning_weakers/pages/admin_group_edit/widgets/total_number_container.dart';
import 'package:morning_weakers/pages/admin_group_edit/widgets/user_list_container.dart';
import 'package:morning_weakers/pages/admin_group_edit/widgets/one_team_number_container.dart';
import 'package:flutter/cupertino.dart';

class AdminGroupEditContainer extends StatelessWidget {
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
            UserListContainer(),
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
