import 'package:morning_weakers/core/dummy_data.dart';
import 'package:morning_weakers/models/models.dart';
import 'package:morning_weakers/pages/home/home_state.dart';
import 'package:state_notifier/state_notifier.dart';

class HomeController extends StateNotifier<HomeState> with LocatorMixin {
  HomeController() : super(const HomeState());

  @override
  void initState() {
    getData();
  }

  //TODO:API生えたら非同期処理実装する！
  Future<void> getData() {
    final Hackathon hackathon = dummyHackathon();
    state = state.copyWith(hackathon: hackathon);
  }
}
