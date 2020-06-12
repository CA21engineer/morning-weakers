import 'package:flutter/material.dart';

class TotalNumberContainer extends StatelessWidget {
  const TotalNumberContainer({
    @required this.totalNumber,
  });

  final int totalNumber;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            '参加人数',
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Row(
            children: <Widget>[
              Text(
                '$totalNumber人',
                textAlign: TextAlign.right,
                style: const TextStyle(fontSize: 20),
              ),
            ],
          )
        ],
      ),
    );
  }
}
