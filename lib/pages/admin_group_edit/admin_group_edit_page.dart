import 'package:flutter/material.dart';

class AdminGroupEditPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('参加者グループ作成'),
      ),
      body: AdminGroupEditPageContainer(),
    );
  }
}

class AdminGroupEditPageContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const TotalNumberContainer(totalNumber: 12),
          const Divider(),
          TextFormField(
            decoration: const InputDecoration(labelText: '1チームの人数'),
            style: const TextStyle(fontSize: 20),
          ),
        ],
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
