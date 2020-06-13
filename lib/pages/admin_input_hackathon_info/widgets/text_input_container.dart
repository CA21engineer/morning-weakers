import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:morning_weakers/pages/admin_input_hackathon_info/admin_input_hackathon_info_controller.dart';

class TextInputContainer extends StatelessWidget {
  const TextInputContainer({this.labelText, this.stateOption, this.maxLines});

  final String labelText;
  final StateOption stateOption;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: labelText,
      ),
      onChanged: (value) => context.read<AdminInputHackathonInfoController>().setState(stateOption, value, null),
      maxLines: maxLines,
    );
  }
}
