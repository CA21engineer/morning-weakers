import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:morning_weakers/pages/home/home_controller.dart';
import 'package:morning_weakers/pages/home/home_state.dart';
import 'package:morning_weakers/pages/new_profile/input_text_widget.dart';
import 'package:morning_weakers/pages/new_profile/new_profile_controller.dart';
import 'package:morning_weakers/pages/new_profile/new_profile_state.dart';
import 'package:morning_weakers/pages/new_profile/ok_button_widget.dart';

class NewProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('プロフィール新規作成'),
      ),
      body: StateNotifierProvider<NewProfileController, NewProfileState>(
        create: (_) => NewProfileController(),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(28),
              child: Column(
                children: <Widget>[
                  _profileIcon(),
                  InputTextWidget(),
                  OkButtonWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _profileIcon() {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(48),
        child: Column(
          children: <Widget>[
            Icon(
              Icons.people,
              size: 100,
            ),
            const RaisedButton(
              onPressed: null,
              child: Text('選択'),
            ),
          ],
        ),
      ),
    );
  }
}
