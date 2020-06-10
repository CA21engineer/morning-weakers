import 'package:flutter/material.dart';
import 'package:morning_weakers/pages/profile_detail/profile_detail_state.dart';
import 'package:provider/provider.dart';

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
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            titleName,
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Column(
            children: context
                .select<ProfileDetailState, String>(
                    (state) => state.user.technicalStacks)
                .map(
                  (technicalStackTitles) => Text(
                    technicalStackTitles,
                    textAlign: TextAlign.right,
                    style: const TextStyle(fontSize: 20),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
