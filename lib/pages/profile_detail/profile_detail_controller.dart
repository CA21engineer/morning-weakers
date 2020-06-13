import 'package:morning_weakers/pages/profile_detail/profile_detail_state.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:morning_weakers/models/models.dart';
import 'package:morning_weakers/core/dummy_data.dart';

class ProfileDetailController extends StateNotifier<ProfileDetailState> with LocatorMixin {
  ProfileDetailController() : super(const ProfileDetailState());

  @override
  void initState() {
    getProfileDetail();
  }

  Future<void> getProfileDetail() async {
    await Future<void>.delayed(const Duration(seconds: 2));

    final User user = dummyUser();

    state = state.copyWith(user: user);
  }
}
