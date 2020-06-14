import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:morning_weakers/models/models.dart';
import 'package:morning_weakers/pages/home/home_state.dart';
import 'package:morning_weakers/pages/home/drawer/widget/menu_widget.dart';
import 'package:provider/provider.dart';

class HackathonDetailWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Hackathon hackathon =
        context.select<HomeState, Hackathon>((context) => context.hackathon);

    final List<List<String>> hackathonDetail = [
      ['テーマ', hackathon.theme],
      ['概要', hackathon.description],
      ['開始日', hackathon.startDate.toString()],
      ['終了日', hackathon.endDate.toString()],
    ];

    return Container(
      child: Column(
        children: <Widget>[
          DrawerHeader(
            child: Center(
              child: Text(
                hackathon.title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            decoration: BoxDecoration(color: Colors.lightBlueAccent),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                Column(
                  children: hackathonDetail
                      .map(
                        (detail) => Container(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            children: <Widget>[
                              ListTile(
                                title: Text(detail[0]),
                                subtitle: Text(detail[1]),
                              )
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ),
                Menu()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
