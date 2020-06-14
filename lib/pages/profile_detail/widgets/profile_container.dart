import 'package:flutter/material.dart';
import 'package:morning_weakers/pages/profile_detail/widgets/profile_list_container.dart';
import 'package:morning_weakers/pages/profile_detail/profile_detail_state.dart';
import 'package:provider/provider.dart';
import 'package:morning_weakers/pages/profile_detail/widgets/technical_stack_container.dart';
import 'package:morning_weakers/models/models.dart';

class ProfileContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (context.select<ProfileDetailState, User>((state) => state.user) == null) {
      return const Center(child: CircularProgressIndicator());
    } else {
      return Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                  child: CircleAvatar(
                    radius: 35,
                    backgroundImage: NetworkImage('${context.select<ProfileDetailState, String>((state) => state.user.iconUrl)}'),
                    backgroundColor: Colors.transparent,
                  ),
                ),
                const SizedBox(width: 20),
                Text(
                  '${context.select<ProfileDetailState, String>((state) => state.user.fullName)}',
                  style: const TextStyle(fontSize: 30),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ProfileListContainer(
              titleName: 'ハンドルネーム',
              contentName: '${context.select<ProfileDetailState, String>((state) => state.user.displayName)}',
            ),
            const Divider(),
            ProfileListContainer(
              titleName: 'Twitter',
              contentName: '${context.select<ProfileDetailState, String>((state) => state.user.twitterAccount)}',
            ),
            const Divider(),
            ProfileListContainer(
              titleName: 'Github',
              contentName: '${context.select<ProfileDetailState, String>((state) => state.user.githubAccount)}',
            ),
            const Divider(),
            TechnicalStackContainer(),
            const Divider(),
          ],
        ),
      );
    }
  }
}
