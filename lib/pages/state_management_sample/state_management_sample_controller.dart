import 'package:morning_weakers/pages/state_management_sample/state_management_sample_state.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:morning_weakers/models/notifier_state.dart';
import 'package:morning_weakers/repository/state_management_sample_repository.dart';

class StateManagementSampleController
    extends StateNotifier<StateManagementSampleState> with LocatorMixin {
  StateManagementSampleController() : super(const StateManagementSampleState());

  StateManagementSampleRepository get stateManagementSampleRepository =>
      read<StateManagementSampleRepository>();

  @override
  void initState() {
    getProfileDetail();
  }

  Future<void> getProfileDetail() async {
    state = state.copyWith(notifierState: NotifierState.loading);
    await stateManagementSampleRepository.waitFewSecond();
    state = state.copyWith(notifierState: NotifierState.loaded);
  }
}
