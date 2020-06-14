import 'package:flutter/cupertino.dart';
import 'package:morning_weakers/core/dummy_data.dart';
import 'package:morning_weakers/models/models.dart';
import 'package:morning_weakers/pages/home/home_state.dart';
import 'package:morning_weakers/repositories/hackathon_repository.dart';
import 'package:state_notifier/state_notifier.dart';

class HomeController extends StateNotifier<HomeState> with LocatorMixin {
  HomeController() : super(const HomeState());

  HackathonRepository get hackathonRepository => read<HackathonRepository>();

  @override
  void initState() {
    debugPrint('debugger: initstatee');
    getData();
  }

  //TODO:API生えたら非同期処理実装する！
  Future<void> getData() async{
    debugPrint('debugger: hackathonId ${hackathonRepository.currentHackathonId}');
    final Hackathon hackathon = await hackathonRepository.getHackathon(hackathonRepository.currentHackathonId);
    debugPrint('debugger: hackathonId ${hackathon}');
    //final Hackathon hackathon = dummyHackathon();
    state = state.copyWith(hackathon: hackathon);
  }
}
