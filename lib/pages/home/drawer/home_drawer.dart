import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
            child: _menus(),
          )
        ],
      ),
    );
  }

  Widget _menus() {
    final List<String> _eventDetail = [
      'これは概要ですが、特に思いつくことがないので、何も書きません。',
      '2020/6/7 ~ 2020/6/14',
      'Twitterでの投票',
    ];

    final List<List<String>> _buttons = [
      ['All Groups', '/navigation'],
      ['All Participants', '/navigation'],
      ['Edit My Info', '/navigation'],
    ];

    return Container(
      child: Column(
        children: <Widget>[
          DrawerHeader(
            child: Center(
              child: Text(
                'CyberAgent21 Hackathon',
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
              shrinkWrap: true,
              children: <Widget>[
                Column(
                  children: _eventDetail
                      .map(
                        (detail) => Container(
                          padding: const EdgeInsets.all(10),
                          child: Text(detail),
                        ),
                      )
                      .toList(),
                ),
                Column(
                  children: _buttons
                      .map(
                        (button) => ListTile(
                          title: Text(
                            button[0],
                            style: const TextStyle(fontSize: 15),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios),
                          //onTap: () => button[1],
                        ),
                      )
                      .toList(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _allGroups() {
    final List<Widget> groups = [
      Icon(Icons.people, size: 50),
      Icon(Icons.people_outline, size: 50),
      Icon(Icons.people, size: 50),
      Icon(Icons.people_outline, size: 50),
      Icon(Icons.people, size: 50),
      Icon(Icons.people_outline, size: 50),
    ];

    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(children: [
        ListView(
          shrinkWrap: true,
          children: groups,
        ),
        Icon(
          Icons.add,
          size: 50,
        ),
      ]),
    );
  }
}
