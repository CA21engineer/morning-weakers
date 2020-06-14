import 'package:morning_weakers/pages/admin_group_edit/admin_group_edit_state.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:morning_weakers/models/notifier_state.dart';
import 'package:morning_weakers/models/models.dart';
import 'package:morning_weakers/repositories/group_repository.dart';

class AdminGroupEditController extends StateNotifier<AdminGroupEditState> with LocatorMixin {
  AdminGroupEditController(List<Participant> participants) : super(const AdminGroupEditState()) {
    state = state.copyWith(
      participants: participants,
      groups: participants.setEditedGroups(),
    );
  }

  GroupRepository get groupRepository => read<GroupRepository>();

  Future<void> handlePostGroups() async {
    state = state.copyWith(notifierState: NotifierState.loading);
    // TODO: Repositoryのmethod
    await Future<void>.delayed(const Duration(seconds: 2));
//    await groupRepository.createGroups('', state.groups);
    state = state.copyWith(notifierState: NotifierState.loaded);
  }
}
