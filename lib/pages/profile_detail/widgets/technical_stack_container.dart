import 'package:flutter/material.dart';

class TechnicalStackContainer extends StatelessWidget {
  const TechnicalStackContainer({
    @required this.titleName,
    @required this.contentName,
  });

  final String titleName, contentName;

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
            children: <Widget>[
              Text(
                contentName,
                textAlign: TextAlign.right,
                style: const TextStyle(fontSize: 20),
              ),
              Text(
                contentName,
                textAlign: TextAlign.right,
                style: const TextStyle(fontSize: 20),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
