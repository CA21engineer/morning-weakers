import 'package:flutter/material.dart';
import 'package:morning_weakers/pages/admin_group_edit/widgets/total_number_container.dart';
import 'package:morning_weakers/pages/admin_group_edit/widgets/user_lists_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:morning_weakers/pages/admin_group_edit/admin_group_edit_state.dart';
import 'package:morning_weakers/pages/admin_group_edit/admin_group_edit_controller.dart';
import 'package:morning_weakers/pages/group_result/group_result_page.dart';
import 'package:morning_weakers/models/notifier_state.dart';

class AdminGroupEditContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (context.select<AdminGroupEditState, NotifierState>((state) => state.notifierState) == NotifierState.loading) {
      return const Center(child: CircularProgressIndicator());
    } else {
      return Container(
        padding: const EdgeInsets.only(left: 32, right: 32, top: 12, bottom: 40),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TotalNumberContainer(),
              const Divider(),
              UserListsContainer(),
              SizedBox(
                width: double.infinity,
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 16),
                  child: RaisedButton(
                    child: const Text('グループを作成する'),
                    color: Theme.of(context).accentColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    onPressed: () async {
                      await context.read<AdminGroupEditController>().handlePostGroups();
                      await Navigator.push<void>(context, MaterialPageRoute(builder: (_) => GroupResultPage()));
                    }
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}
