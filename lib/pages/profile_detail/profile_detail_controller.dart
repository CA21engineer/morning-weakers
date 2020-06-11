import 'package:morning_weakers/pages/profile_detail/profile_detail_state.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:morning_weakers/core/dummy_data.dart';
import 'package:morning_weakers/models/models.dart';

class ProfileDetailController extends StateNotifier<ProfileDetailState>
    with LocatorMixin {
  ProfileDetailController() : super(const ProfileDetailState());

  @override
  void initState() {
    getProfileDetail();
  }

  Future<void> getProfileDetail() async {
    await Future<void>.delayed(const Duration(seconds: 2));

    const user = User(
      id: 'dummy',
      fullName: 'dummy',
      displayName: 'dummmy',
      technicalStacks: [
        TechnicalStack(
          id: 'dummy',
          stack: Stack.iOS,
          languages: [Language.Kotlin, Language.Swift],
          proficiency: Proficiency.Good,
          priority: 1,
        ),
        TechnicalStack(
          id: 'dummy',
          stack: Stack.Android,
          languages: [Language.Kotlin, Language.Swift],
          proficiency: Proficiency.Good,
          priority: 1,
        ),
      ],
      githubAccount: 'dummy',
      twitterAccount: 'dummy',
      iconUrl: 'dummy',
    );

    state = state.copyWith(user: user);
  }
}
