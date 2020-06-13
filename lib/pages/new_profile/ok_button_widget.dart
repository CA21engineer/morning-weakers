import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:morning_weakers/pages/new_profile/new_profile_controller.dart';

class OkButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
        child: const Text('ok'),
        onPressed: () async {
          await context.read<NewProfileController>().handlePostUser();
        });
  }
}
