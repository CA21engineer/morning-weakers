import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:morning_weakers/extensions/list.dart';
import 'package:morning_weakers/pages/new_profile/new_profile_controller.dart';
import 'package:provider/provider.dart';

class InputTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> _titleList = [
      'ユーザ名',
      'ハンドルネーム',
      'Twitter アカウント',
      'Github アカウント',
      '技術スタック'
    ];

    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(children: _titleList.indexedMap<Widget>((index, value) {
        debugPrint('$index, $value');
        return Container(
          padding: const EdgeInsets.all(8),
          child: TextFormField(
            onFieldSubmitted: (String text) =>
                context.read<NewProfileController>().setState(index, text),
            decoration: InputDecoration(
              labelText: value,
            ),
          ),
        );
      })),
    );
  }
}
