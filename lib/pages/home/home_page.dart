import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:morning_weakers/pages/home/drawer/home_drawer.dart';
import 'package:morning_weakers/pages/home/home_controller.dart';
import 'package:morning_weakers/pages/home/home_state.dart';
import 'package:morning_weakers/pages/home/widget/data_table.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('ホーム画面'),
        ),
        body: StateNotifierProvider<HomeController, HomeState>(
          create: (_) => HomeController(),
          child: Container(
            child: ListView(
              padding: const EdgeInsets.all(20),
              children: <Widget>[
                DataTableView(),
                _sourceLinks(),
                const Divider(),
                _allGroupNav(context),
              ],
            ),
          ),
        ),
        drawer: HomeDrawer(),
      ),
    );
  }

  final List<List<String>> _data = [
    ['鈴木', 'Suzu-K', 'twi-suzu', 'git-suzu', 'All'],
    ['佐藤', 'Sato-U', 'twi-sato', 'git-sato', 'All'],
    ['田中', 'Tana-K', 'twi-tana', 'git-tana', 'All'],
    ['高橋', 'Taka-C', 'twi-taka', 'git-taka', 'All'],
  ];

  //Github/slideなど資料のリンク置き場
  Widget _sourceLinks() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(children: const <Widget>[
        Text(
          '資料リンク',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        ListTile(
            title: Text(
              'Github',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'https://github.com/CA21engineer/morning-weakers',
              style: TextStyle(fontStyle: FontStyle.italic),
            )),
        ListTile(
          title: Text(
            'Slide',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            'https://docs.google.com/presentation/morning-weakers',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
      ]),
    );
  }

  Widget _allGroupNav(BuildContext context) {
    return ListTile(
      title: const Text(
        '全てのグループを見る',
        style: TextStyle(fontSize: 20),
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () => null,
    );
  }
}
