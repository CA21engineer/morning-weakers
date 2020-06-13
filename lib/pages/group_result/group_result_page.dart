import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:morning_weakers/pages/group_result/group_result_controller.dart';
import 'package:morning_weakers/pages/group_result/group_result_list_widget.dart';
import 'package:morning_weakers/pages/group_result/group_result_state.dart';

class GroupResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('グループ分け結果')),
      body: StateNotifierProvider<GroupResultController, GroupResultState>(
        create: (_) => GroupResultController(),
        child: Container(
          padding: const EdgeInsets.all(4),
          child: GroupResultListWidget(),
        ),
      ),
    );
  }
}
