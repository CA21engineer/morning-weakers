import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:morning_weakers/pages/group_result/group_result_page.dart';

class SubmitBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: const Text('OK'),
      color: Theme.of(context).accentColor,
      onPressed: () async {
//        await context.read<InputParticipantInfoController>().handlePost();
        await Navigator.push<void>(context, MaterialPageRoute(builder: (_) => GroupResultPage()));
      });
  }
}
