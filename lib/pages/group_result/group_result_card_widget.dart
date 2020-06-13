import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:morning_weakers/pages/group_result/group_result_state.dart';
import 'package:provider/provider.dart';
import 'package:morning_weakers/models/models.dart';

//TODO: cardの中身でwidget切り分けた方がいいかな？いらなければPR時に消します.
class GroupResultCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final List<Group> groups = context.select<GroupResultState, List<Group>>((state) => state.hackathon.groups);
    return const Text('a');
  }
}
