import 'package:flutter/material.dart';
import 'package:morning_weakers/pages/profile_detail/widgets/profile_container.dart';

class ProfileDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('プロフィール詳細'),
      ),
      body: ProfileContainer(),
    );
  }
}
