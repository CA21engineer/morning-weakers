import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:morning_weakers/pages/home/drawer/all_groups_widget.dart';
import 'package:morning_weakers/pages/home/drawer/hackathon_detail_widget.dart';

class HomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: AllGroupsWidget(),
          ),
          Expanded(
            flex: 5,
            child: HackathonDetailWidget(),
          )
        ],
      ),
    );
  }
}
