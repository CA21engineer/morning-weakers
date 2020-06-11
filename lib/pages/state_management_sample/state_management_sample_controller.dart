import 'package:morning_weakers/pages/state_management_sample/state_management_sample_state.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:morning_weakers/models/models.dart';
import 'package:morning_weakers/core/dummy_data.dart';

class StateManagementSampleController
    extends StateNotifier<StateManagementSampleState> with LocatorMixin {
  StateManagementSampleController() : super(const StateManagementSampleState());

//  @override
//  void initState() {
//    getProfileDetail();
//  }
//
//  Future<void> getProfileDetail() async {
//    await Future<void>.delayed(const Duration(seconds: 2));
//
//    final User user = dummyUser();
//
//    state = state.copyWith(user: user);
//  }
}
