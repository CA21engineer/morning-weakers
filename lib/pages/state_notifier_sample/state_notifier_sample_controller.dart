import 'package:firebase_auth/firebase_auth.dart';
import 'package:morning_weakers/core/dummy_data.dart';
import 'package:morning_weakers/models/models.dart';
import 'package:morning_weakers/pages/state_notifier_sample/state_notifier_sample_state.dart';
import 'package:morning_weakers/repositories/hackathon_repository.dart';
import 'package:state_notifier/state_notifier.dart';

class SampleController extends StateNotifier<SampleState> with LocatorMixin {
  SampleController() : super(const SampleState());

  HackathonRepository get hackathonRepository => read<HackathonRepository>();

  void handleClick() {
    state = state.copyWith(count: state.count + 1);
  }

  Future<void> createHackathon() async {
    final FirebaseUser firebaseUser = await FirebaseAuth.instance.currentUser();
    if (firebaseUser == null) {
      return;
    }
    final Participant participant = dummyParticipant(user: dummyUser(id: firebaseUser.uid), isAdmin: true);
    final hackathon = dummyHackathon(participants: [participant]);
    await hackathonRepository.createHackathon(hackathon);
  }
}
