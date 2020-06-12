import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'new_profile_controller.dart';

class OkButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
        child: const Text('ok'),
        onPressed: () {
          return context.read<NewProfileController>().postUser();
        });
  }
}
