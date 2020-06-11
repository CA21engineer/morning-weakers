import 'package:morning_weakers/core/dummy_data.dart';
import 'package:morning_weakers/pages/state_notifier_sample/state_notifier_sample_state.dart';
import 'package:state_notifier/state_notifier.dart';

class SampleController extends StateNotifier<SampleState> {
  SampleController() : super(SampleState(user: dummyUser()));

  void handleClick(){
    state = state.copyWith(count: state.count + 1);
  }
}
