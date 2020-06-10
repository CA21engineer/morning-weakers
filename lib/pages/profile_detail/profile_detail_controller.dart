import 'package:morning_weakers/pages/profile_detail/profile_detail_state.dart';
import 'package:state_notifier/state_notifier.dart';

class ProfileDetailController extends StateNotifier<ProfileDetailState>
    with LocatorMixin {
  ProfileDetailController() : super(const ProfileDetailState());

  @override
  void initState() {
    getProfileDetail();
  }

  void getProfileDetail() {
    state = state.copyWith(
      fullName: '',
      displayName: '',
      githubAccount: '',
      twitterAccount: '',
      iconUrl: '',
    );
  }
}
