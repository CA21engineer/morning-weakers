import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:morning_weakers/pages/home/drawer/hackathon_detail_widget.dart';

class HomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: _allGroups(),
          ),
          Expanded(
            flex: 5,
            child: HackathonDetailWidget(),
          )
        ],
      ),
    );
  }

  Widget _allGroups() {
    final List<Widget> groups = [
      Icon(Icons.people, size: 52),
      Icon(Icons.people_outline, size: 52),
      Icon(Icons.people, size: 52),
      Icon(Icons.people_outline, size: 52),
      Icon(Icons.people, size: 52),
      Icon(Icons.people_outline, size: 52),
    ];

    return Container(
      padding: const EdgeInsets.all(12),
      child: Column(children: [
        ListView(
          shrinkWrap: true,
          children: groups,
        ),
        const Icon(
          Icons.add,
          size: 52,
        ),
      ]),
    );
  }
}
