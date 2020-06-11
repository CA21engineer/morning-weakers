import 'package:flutter/material.dart';
import 'package:morning_weakers/pages/profile_detail/profile_detail_state.dart';
import 'package:provider/provider.dart';
import 'package:morning_weakers/models/models.dart' as models;
import 'package:morning_weakers/extensions/list.dart';

class TechnicalStackContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final models.User user =
        context.select<ProfileDetailState, models.User>((state) => state.user);

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const Text(
            '技術スタック',
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Column(
            children: user.technicalStacks
                .indexedMap(
                  (index, technicalStack) => Container(
                    padding: index != user.technicalStacks.length - 1
                        ? const EdgeInsets.only(bottom: 32)
                        : null,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.only(bottom: 12),
                          child: SingleChildScrollView(
                            child: Text(
                              models.getStackValue(technicalStack.stack),
                              textAlign: TextAlign.right,
                              style: const TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                        Text(_getCombinedLanguageText(technicalStack.languages))
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }

  String _getCombinedLanguageText(List<models.Language> languages) {
    String text = '';
    languages.asMap().forEach((index, language) {
      text += '${models.getLanguageValue(language)}';
      text += index != languages.length - 1 ? ', ' : '';
    });
    return text;
  }
}
