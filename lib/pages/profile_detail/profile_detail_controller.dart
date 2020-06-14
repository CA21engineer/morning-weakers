import 'package:morning_weakers/pages/profile_detail/profile_detail_state.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:morning_weakers/models/models.dart';
import 'package:morning_weakers/repositories/user_repository.dart';

class ProfileDetailController extends StateNotifier<ProfileDetailState> with LocatorMixin {
  ProfileDetailController() : super(const ProfileDetailState());

  UserRepository get userRepository => read<UserRepository>();

  @override
  void initState() {
    getProfileDetail();
  }

  Future<void> getProfileDetail() async {
    final User user = await userRepository.getMyInfo();
    state = state.copyWith(user: user);
  }
}
