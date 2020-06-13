import 'package:flutter/material.dart';
import 'package:morning_weakers/pages/admin_group_edit/widgets/total_number_container.dart';
import 'package:morning_weakers/pages/admin_group_edit/widgets/user_list_container.dart';
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
            TotalNumberContainer(), // state.participants.lengthを監視
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
