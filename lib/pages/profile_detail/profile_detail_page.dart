import 'package:flutter/material.dart';
import 'package:morning_weakers/pages/profile_detail/widgets/profile_container.dart';

class ProfileDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('プロフィール詳細'),
      ),
      body: _profile,
    );
  }

  final Widget _profile = Container(
    padding: const EdgeInsets.all(20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.blue),
              child: const CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 35,
              ),
            ),
            const SizedBox(width: 20),
            Text(
              'Ryu1',
              style: const TextStyle(fontSize: 30),
            ),
          ],
        ),
        const SizedBox(height: 20),
        ProfileContainer(titleName: 'ハンドルネーム', contentName: 'Ryu1'),
        const Divider(),
        ProfileContainer(titleName: 'Twitter', contentName: '@ryu1'),
        const Divider(),
        ProfileContainer(titleName: 'Github', contentName: '@ryu1'),
        const Divider(),
        ProfileContainer(titleName: '技術スタック', contentName: 'Flutter, Swift'),
        const Divider(),
      ],
    ),
  );
}
