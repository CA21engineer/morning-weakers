import 'package:morning_weakers/core/dummy_data.dart';
import 'package:morning_weakers/models/models.dart';
import 'package:morning_weakers/pages/group_result/group_result_state.dart';
import 'package:state_notifier/state_notifier.dart';

class GroupResultController extends StateNotifier<GroupResultState> with LocatorMixin {
  GroupResultController() : super(const GroupResultState());

  @override
  void initState() {
    getGroupResult();
  }

  Future<void> getGroupResult() {
    final Hackathon hackathon = dummyHackathon();
    state = state.copyWith(hackathon: hackathon);
  }
}
