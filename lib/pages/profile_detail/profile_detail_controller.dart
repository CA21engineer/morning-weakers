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
    final user = const User(
      id: '',
      fullName: '',
      displayName: '',
      githubAccount: '',
      twitterAccount: '',
      iconUrl: '',
    );

    state = state.copyWith(
      fullName: user.fullName,
      displayName: user.displayName,
      githubAccount: user.githubAccount,
      twitterAccount: user.twitterAccount,
      iconUrl: user.iconUrl,
    );
  }
}
