import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SubmitBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: const Text('OK'),
      color: Theme.of(context).accentColor,
      onPressed: () async {
//        await context.read<InputParticipantInfoController>().handlePost();
      });
  }
}
