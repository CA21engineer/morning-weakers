import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:morning_weakers/pages/admin_group_edit/admin_group_edit_state.dart';

class TotalNumberContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const Text(
            '参加人数',
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Row(
            children: <Widget>[
              Text(
                '${context.select<AdminGroupEditState, int>((state) => state.participants.length)}',
                textAlign: TextAlign.right,
                style: const TextStyle(fontSize: 20),
              ),
            ],
          )
        ],
      ),
    );
  }
}
