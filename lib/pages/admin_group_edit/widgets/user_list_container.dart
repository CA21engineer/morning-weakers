import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:morning_weakers/models/models.dart';
import 'package:morning_weakers/models/technical_stack/stack.dart' as stack_file;
import 'package:morning_weakers/core/dummy_data.dart';

class UserListContainer extends StatelessWidget {
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
              title: Text(''),
              subtitle: Text(
                '',
              ),
              trailing: const Text('チーム1'), //どのチームに属するのかstateを参照
            ),
          ),
        );
      },
      itemCount: 10,
    );
  }
}
