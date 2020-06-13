import 'package:morning_weakers/pages/admin_group_edit/admin_group_edit_state.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:morning_weakers/models/notifier_state.dart';
import 'package:morning_weakers/models/models.dart';
import 'package:morning_weakers/pages/admin_input_hackathon_info/admin_input_hackathon_info_state.dart';
import 'package:morning_weakers/pages/admin_input_hackathon_info/admin_input_hackathon_info_controller.dart';

class AdminInputHackathonInfoController extends StateNotifier<AdminInputHackathonInfoState> with LocatorMixin {
  AdminInputHackathonInfoController() : super(const AdminInputHackathonInfoState());

  // TODO: Repositoy
  // StateManagementSampleRepository get stateManagementSampleRepository => read<StateManagementSampleRepository>();

  Future<void> handleCreateHackathon() async {
    state = state.copyWith(notifierState: NotifierState.loading);
    // TODO: Repositoryのmethod
    await Future<void>.delayed(const Duration(seconds: 2));
//    await stateManagementSampleRepository.waitFewSecond();
    state = state.copyWith(notifierState: NotifierState.loaded);
  }
}
