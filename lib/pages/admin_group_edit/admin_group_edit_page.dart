import 'package:flutter/material.dart';
import 'package:morning_weakers/pages/admin_group_edit/widgets/admin_group_edit_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:morning_weakers/repository/state_management_sample_repository.dart';
import 'package:morning_weakers/pages/admin_group_edit/admin_group_edit_state.dart';
import 'package:morning_weakers/pages/admin_group_edit/admin_group_edit_controller.dart';
import 'package:morning_weakers/models/models.dart';

class AdminGroupEditPage extends StatelessWidget {
  const AdminGroupEditPage(this._participants);

  final List<Participant> _participants;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('参加者グループ作成'),
      ),
      body: Provider(
        create: (_) => StateManagementSampleRepository(),
        child: StateNotifierProvider<AdminGroupEditController, AdminGroupEditState>(
          create: (_) => AdminGroupEditController(_participants),
          child: AdminGroupEditContainer(),
        ),
      ),
    );
  }
}
