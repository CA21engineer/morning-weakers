import 'package:flutter/material.dart';
import 'package:morning_weakers/pages/profile_detail/widgets/profile_container.dart';
import 'package:morning_weakers/pages/profile_detail/profile_detail_controller.dart';
import 'package:morning_weakers/pages/profile_detail/profile_detail_state.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';

class ProfileDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('プロフィール詳細'),
      ),
      body: StateNotifierProvider<ProfileDetailController, ProfileDetailState>(
        create: (_) => ProfileDetailController(),
        child: ProfileContainer(),
      ),
    );
  }
}
