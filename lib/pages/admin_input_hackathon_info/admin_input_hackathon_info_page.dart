import 'package:flutter/material.dart';
import 'package:morning_weakers/pages/admin_group_edit/widgets/admin_group_edit_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:morning_weakers/repository/state_management_sample_repository.dart';
import 'package:morning_weakers/pages/admin_input_hackathon_info/admin_input_hackathon_info_state.dart';
import 'package:morning_weakers/pages/admin_input_hackathon_info/admin_input_hackathon_info_controller.dart';
import 'package:morning_weakers/pages/admin_input_hackathon_info/widgets/admin_input_hackathon_info_container.dart';
import 'package:morning_weakers/models/models.dart';

class AdminInputHackathonInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ハッカソン概要入力'),
      ),
      body: Provider(
        create: (_) => StateManagementSampleRepository(),
        child: StateNotifierProvider<AdminInputHackathonInfoController, AdminInputHackathonInfoState>(
          create: (_) => AdminInputHackathonInfoController(),
          child: AdminInputHackathonInfoContainer(),
        ),
      ),
    );
  }
}
