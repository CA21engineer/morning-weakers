import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class OneTeamNumberContainer extends StatelessWidget {
  const OneTeamNumberContainer(
      {this.memberNumber, this.teamNumber, this.pickerList});

  final int memberNumber, teamNumber;
  final List<int> pickerList;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            '1チームの最低人数',
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Row(
            children: <Widget>[
              Text(
                '$memberNumber人', // (state.1チームの人数)を監視する
                textAlign: TextAlign.right,
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(width: 8),
              SizedBox(
                width: 60,
                child: RaisedButton(
                  padding: const EdgeInsets.all(8),
                  child: const Text('変更'),
                  color: Colors.blueAccent,
                  onPressed: () {
                    _showModalPicker(context);
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  void _showModalPicker(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height / 3,
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: CupertinoPicker(
              itemExtent: 40,
              children: pickerList
                  .map<Widget>((element) => Text(element.toString()))
                  .toList(),
              onSelectedItemChanged: (index) {
                // stateに変更を伝える
              },
            ),
          ),
        );
      },
    );
  }
}
