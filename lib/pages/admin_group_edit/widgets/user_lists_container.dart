import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:morning_weakers/models/models.dart';
import 'package:provider/provider.dart';
import 'package:morning_weakers/pages/admin_group_edit/admin_group_edit_state.dart';

class UserListsContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return ListItem(index: index);
      },
      itemCount: context.select<AdminGroupEditState, int>((state) => state.participants.length),
    );
  }
}

class ListItem extends StatelessWidget {
  const ListItem({this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: ListTile(
          // state.participantsを参照
          title: Text('${context.select<AdminGroupEditState, String>((state) => state.participants[index].user.displayName)}'),
          subtitle: Text(
            '${context.select<AdminGroupEditState, String>((state) => state.participants[index].user.technicalStacks[0].stack.getValue())}',
          ),
          trailing: const Text('チーム1'), //どのチームに属するのかstateを参照
        ),
      ),
    );
  }
}
