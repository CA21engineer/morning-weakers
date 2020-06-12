import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:morning_weakers/models/models.dart';
import 'package:morning_weakers/pages/home/home_state.dart';
import 'package:provider/provider.dart';

class HackathonDetailWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Hackathon hackathon =
        context.select<HomeState, Hackathon>((context) => context.hackathon);

    List<List<String>> hackathonDetail = [
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
                style: TextStyle(
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
                _menus()
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _menus() {
    final List<List<String>> menus = [
      ['All Groups', '/navigation'],
      ['All Participants', '/navigation'],
      ['Edit My Info', '/navigation'],
    ];

    return Column(
        children: menus
            .map(
              (button) => ListTile(
                title: Text(
                  button[0],
                  style: const TextStyle(fontSize: 15),
                ),
                trailing: const Icon(Icons.arrow_forward_ios),
//onTap: () => button[1],
              ),
            )
            .toList());
  }
}
