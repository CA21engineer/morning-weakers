import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:morning_weakers/pages/home/drawer/home_drawer.dart';
import 'package:morning_weakers/pages/home/home_controller.dart';
import 'package:morning_weakers/pages/home/home_state.dart';
import 'package:morning_weakers/pages/home/widget/data_table.dart';
import 'package:morning_weakers/pages/home/widget/source_link_widget.dart';

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
                  Divider(
                    color: Theme.of(context).primaryColor,
                  ),
                  SourceLinkWidget(),
                  Divider(
                    color: Theme.of(context).primaryColor,
                  ),
                  ListTile(
                    title: const Text(
                      '全てのグループを見る',
                      style: TextStyle(fontSize: 20),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () => null,
                  ),
                ],
              ),
            ),
          ),
          drawer: StateNotifierProvider<HomeController, HomeState>(
            create: (_) => HomeController(),
            child: HomeDrawer(),
          )),
    );
  }
}
