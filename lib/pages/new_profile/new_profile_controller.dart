import 'package:flutter/cupertino.dart';
import 'package:morning_weakers/core/dummy_data.dart';
import 'package:morning_weakers/models/models.dart';
import 'package:morning_weakers/pages/new_profile/new_profile_state.dart';
import 'package:state_notifier/state_notifier.dart';

class NewProfileController extends StateNotifier<NewProfileState>
    with LocatorMixin {
  NewProfileController() : super(const NewProfileState());

  @override
  void initState() {
    getData();
  }

  //TODO:API生えたら非同期処理実装する！
  Future<void> getData() {
    final User user = dummyUser();
    state = state.copyWith(
      fullName: user.fullName,
      displayName: user.displayName,
      twitterAccount: user.twitterAccount,
      githubAccount: user.githubAccount,
      //TODO:technicalStacks: user.technicalStacks,
    );
  }

  Future<void> postUser() {
    //TODO:Repositoryやる
    debugPrint('debugger: $state');
  }

  void setState(int key, String value) {
    debugPrint('debugger: $key ,$value');
    switch (key) {
      case 0:
        _setNameState(value);
        break;
      case 1:
        _setDisplayState(value);
        break;
      case 2:
        _setTwitterState(value);
        break;
      case 3:
        _setGithubState(value);
        break;
      //TODO:case 4: _set
    }
  }

  void _setNameState(String value) => state = state.copyWith(fullName: value);

  void _setDisplayState(String value) =>
      state = state.copyWith(displayName: value);

  void _setTwitterState(String value) =>
      state = state.copyWith(twitterAccount: value);

  void _setGithubState(String value) =>
      state = state.copyWith(githubAccount: value);

//TODO:void _setStackState(String value) => state = state.copyWith(stacks: [Stack.]);
}
