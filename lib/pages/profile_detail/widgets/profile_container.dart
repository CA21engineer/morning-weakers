import 'package:flutter/material.dart';
import 'package:morning_weakers/pages/profile_detail/widgets/profile_list_container.dart';
import 'package:morning_weakers/pages/profile_detail/profile_detail_state.dart';
import 'package:provider/provider.dart';

class ProfileContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                '${context.select<ProfileDetailState, String>((state) => state.fullName)}',
                style: TextStyle(fontSize: 30),
              ),
            ],
          ),
          const SizedBox(height: 20),
          ProfileListContainer(
              titleName: 'ハンドルネーム',
              contentName:
                  '${context.select<ProfileDetailState, String>((state) => state.displayName)}'),
          const Divider(),
          ProfileListContainer(
              titleName: 'Twitter',
              contentName:
                  '${context.select<ProfileDetailState, String>((state) => state.twitterAccount)}'),
          const Divider(),
          ProfileListContainer(
              titleName: 'Github',
              contentName:
                  '${context.select<ProfileDetailState, String>((state) => state.githubAccount)}'),
          const Divider(),
          const ProfileListContainer(
              titleName: '技術スタック', contentName: 'Flutter, Swift'),
          const Divider(),
        ],
      ),
    );
  }
}
