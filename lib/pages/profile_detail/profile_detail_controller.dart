import 'package:morning_weakers/pages/profile_detail/profile_detail_state.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:morning_weakers/models/user/user.dart';

class ProfileDetailController extends StateNotifier<ProfileDetailState>
    with LocatorMixin {
  ProfileDetailController() : super(const ProfileDetailState());

  @override
  void initState() {
    getProfileDetail();
  }

  void getProfileDetail() {
    final dummyUser = const User(
      id: 'dummy',
      fullName: 'dummy',
      displayName: 'dummy',
      githubAccount: 'dummy',
      twitterAccount: 'dummy',
      iconUrl: 'dummy',
    );

    state = state.copyWith(
      fullName: dummyUser.fullName,
      displayName: dummyUser.displayName,
      githubAccount: dummyUser.githubAccount,
      twitterAccount: dummyUser.twitterAccount,
      iconUrl: dummyUser.iconUrl,
    );
  }
}
