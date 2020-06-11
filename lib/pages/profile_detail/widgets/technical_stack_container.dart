import 'package:flutter/material.dart';
import 'package:morning_weakers/pages/profile_detail/profile_detail_state.dart';
import 'package:provider/provider.dart';
import 'package:morning_weakers/models/models.dart' as models;

class TechnicalStackContainer extends StatelessWidget {
  const TechnicalStackContainer({
    @required this.titleName,
    @required this.contentName,
    @required this.technicalStackTitles,
  });

  final String titleName, contentName;
  final List<String> technicalStackTitles;

  @override
  Widget build(BuildContext context) {
    final models.User user =
        context.select<ProfileDetailState, models.User>((state) => state.user);

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            titleName,
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Column(
            children: user.technicalStacks
                .indexedMap(
                  (index, technicalStack) => Container(
                    padding: index != user.technicalStacks.length - 1
                        ? const EdgeInsets.only(bottom: 30)
                        : null,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: SingleChildScrollView(
                            child: Text(
                              _getStackValue(technicalStack.stack),
                              textAlign: TextAlign.right,
                              style: const TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                        Text(_getLanguageList(technicalStack.languages))
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

  String _getStackValue(models.Stack stack) {
    switch (stack) {
      case models.Stack.iOS:
        return 'iOS';
      case models.Stack.Android:
        return 'Android';
      case models.Stack.Serverside:
        return 'Serverside';
    }
  }

  String _getLanguageValue(models.Language language) {
    switch (language) {
      case models.Language.Swift:
        return 'Swift';
      case models.Language.Kotlin:
        return 'Kotlin';
    }
  }

  String _getLanguageList(List<models.Language> languages) {
    String text = '';
    languages.asMap().forEach((index, language) {
      text += '${_getLanguageValue(language)}';
      text += index != languages.length - 1 ? ', ' : '';
    });
    return text;
  }
}

//Error: 'Stack' is imported from both 'package:flutter/src/widgets/basic.dart' and 'package:morning_weakers/models/technical_stack/stack.dart'.
//case Stack.Android:

extension IndexedMap<T, E> on List<T> {
  // ignore: avoid_shadowing_type_parameters
  List<E> indexedMap<E>(E Function(int index, T item) function) {
    final list = <E>[];
    asMap().forEach((index, element) {
      list.add(function(index, element));
    });
    return list;
  }
}
