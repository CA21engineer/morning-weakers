import 'package:state_notifier/state_notifier.dart';
import 'package:morning_weakers/models/notifier_state.dart';
import 'package:morning_weakers/pages/admin_input_hackathon_info/admin_input_hackathon_info_state.dart';

class AdminInputHackathonInfoController extends StateNotifier<AdminInputHackathonInfoState> with LocatorMixin {
  AdminInputHackathonInfoController() : super(const AdminInputHackathonInfoState()) {
    state = state.copyWith(
      startDate: DateTime.now(),
      endDate: DateTime.now(),
    );
  }

  // TODO: Repositoy
  // StateManagementSampleRepository get stateManagementSampleRepository => read<StateManagementSampleRepository>();

  void setState(StateOption stateOption, String stringValue, DateTime dateTimeValue) {
    switch (stateOption) {
      case StateOption.Title:
        _setTitle(stringValue);
        break;
      case StateOption.Theme:
        _setDescription(stringValue);
        break;
      case StateOption.Description:
        _setTheme(stringValue);
        break;
      case StateOption.StartDate:
        _setStartDate(dateTimeValue);
        break;
      case StateOption.EndDate:
        _setEndDate(dateTimeValue);
        break;
    }
  }

  void _setTitle(String value) => state = state.copyWith(title: value);
  void _setDescription(String value) => state = state.copyWith(description: value);
  void _setTheme(String value) => state = state.copyWith(theme: value);
  void _setStartDate(DateTime value) => state = state.copyWith(startDate: value);
  void _setEndDate(DateTime value) => state = state.copyWith(endDate: value);

  Future<void> handleCreateHackathon() async {
    state = state.copyWith(notifierState: NotifierState.loading);
    // TODO: Repositoryのmethod
    await Future<void>.delayed(const Duration(seconds: 2));
    // await stateManagementSampleRepository.waitFewSecond();
    state = state.copyWith(notifierState: NotifierState.loaded);
  }
}

enum StateOption { Title, Description, Theme, StartDate, EndDate }
