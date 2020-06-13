import 'package:morning_weakers/pages/admin_group_edit/admin_group_edit_state.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:morning_weakers/models/notifier_state.dart';
import 'package:morning_weakers/models/models.dart';

class AdminGroupEditController extends StateNotifier<AdminGroupEditState> with LocatorMixin {
  AdminGroupEditController(List<Participant> participants) : super(const AdminGroupEditState()) {
    state = state.copyWith(
      participants: participants,
      groups: participants.setEditedGroups(),
    );
  }

  // TODO: Repositoy
  //  StateManagementSampleRepository get stateManagementSampleRepository => read<StateManagementSampleRepository>();

  Future<void> postGroups() async {
    state = state.copyWith(notifierState: NotifierState.loading);
    // TODO: Repositoryのmethod
    print('jf');
    await Future<void>.delayed(const Duration(seconds: 2));
//    await stateManagementSampleRepository.waitFewSecond();
    state = state.copyWith(notifierState: NotifierState.loaded);
  }
}
