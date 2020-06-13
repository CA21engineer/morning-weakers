import 'package:flutter/material.dart';
import 'package:morning_weakers/pages/admin_group_edit/widgets/admin_group_edit_container.dart';
import 'package:flutter/cupertino.dart';

class AdminGroupEditPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('参加者グループ作成'),
      ),
      body: AdminGroupEditContainer(),
    );
  }
}
