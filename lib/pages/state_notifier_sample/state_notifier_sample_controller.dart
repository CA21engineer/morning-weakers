import 'package:firebase_auth/firebase_auth.dart';
import 'package:morning_weakers/core/dummy_data.dart';
import 'package:morning_weakers/models/models.dart';
import 'package:morning_weakers/pages/state_notifier_sample/state_notifier_sample_state.dart';
import 'package:morning_weakers/repositories/group_repository.dart';
import 'package:morning_weakers/repositories/hackathon_repository.dart';
import 'package:morning_weakers/repositories/participant_repository.dart';
import 'package:morning_weakers/repositories/questionnaire_repository.dart';
import 'package:state_notifier/state_notifier.dart';

// TODO: 動作確認用、あとで消す
class SampleController extends StateNotifier<SampleState> with LocatorMixin {
  SampleController() : super(const SampleState());

  HackathonRepository get hackathonRepository => read<HackathonRepository>();

  ParticipantRepository get participantRepository => read<ParticipantRepository>();

  GroupRepository get groupRepository => read<GroupRepository>();

  QuestionnaireRepository get questionnaireRepository => read<QuestionnaireRepository>();

  void handleClick() {
    state = state.copyWith(count: state.count + 1);
  }

  Future<void> createHackathon() async {
    final FirebaseUser firebaseUser = await FirebaseAuth.instance.currentUser();
    if (firebaseUser == null) {
      return;
    }
    final Participant participant = dummyParticipant(user: dummyUser(id: firebaseUser.uid), isAdmin: true);
    final Hackathon hackathon = dummyHackathon(participants: [participant], questionnaire: null);
    await hackathonRepository.createHackathon(hackathon);
  }

  Future<void> getHackathon() async {
    final FirebaseUser firebaseUser = await FirebaseAuth.instance.currentUser();
    if (firebaseUser == null) {
      return;
    }
    final Hackathon hackathon = await hackathonRepository.getHackathon(hackathonRepository.currentHackathonId);
    state = state.copyWith(hackathon: hackathon);
  }

  Future<void> getMyJoined() async {
    final FirebaseUser firebaseUser = await FirebaseAuth.instance.currentUser();
    if (firebaseUser == null) {
      return;
    }
    final Joined joined = await hackathonRepository.getMyJoined();
    state = state.copyWith(joined: joined);
  }

  Future<void> joinHackathon() async {
    final FirebaseUser firebaseUser = await FirebaseAuth.instance.currentUser();
    if (firebaseUser == null) {
      return;
    }
    await hackathonRepository.joinHackathon(
      dummyHackathon(id: hackathonRepository.currentHackathonId),
      [dummyTechnicalStack()],
      2,
      '備考だよ',
    );
  }

  Future<void> createQuestionnaire() async {
    final FirebaseUser firebaseUser = await FirebaseAuth.instance.currentUser();
    if (firebaseUser == null) {
      return;
    }
    await questionnaireRepository.createQuestionnaire(hackathonRepository.currentHackathonId, dummyQuestionnaire());
  }

  Future<void> getParticipants() async {
    final FirebaseUser firebaseUser = await FirebaseAuth.instance.currentUser();
    if (firebaseUser == null) {
      return;
    }
    final List<Participant> participants = await participantRepository.getParticipants(hackathonRepository.currentHackathonId);
    state = state.copyWith(participants: participants);
  }

  Future<void> getGroups() async {
    final FirebaseUser firebaseUser = await FirebaseAuth.instance.currentUser();
    if (firebaseUser == null) {
      return;
    }
    final List<Group> groups = await groupRepository.getGroups(hackathonRepository.currentHackathonId);
    state = state.copyWith(groups: groups);
  }

  Future<void> createGroups() async {
    final FirebaseUser firebaseUser = await FirebaseAuth.instance.currentUser();
    if (firebaseUser == null) {
      return;
    }
    await groupRepository.createGroups(hackathonRepository.currentHackathonId, [dummyGroup()]);
  }
}
