import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GroupResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const String tomLink =
        'https://pbs.twimg.com/profile_images/711875358149062656/pSW1TCfr_400x400.jpg';
    const List<List<String>> data = [
      [tomLink, 'tom', 'server'],
      [tomLink, 'tom', 'server'],
      [tomLink, 'tom', 'server'],
      [tomLink, 'tom', 'server'],
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('グループ分け結果')),
      body: Container(
        padding: const EdgeInsets.all(4),
        child: GridView.count(
            shrinkWrap: true,
            childAspectRatio: 0.1,
            crossAxisCount: 2,
            children: <Widget>[
              SingleChildScrollView(
                child: Card(
                  color: Colors.lightBlueAccent,
                  child: Container(
                    margin: const EdgeInsets.all(12),
                    child: Column(
                      children: <Widget>[
                        Text(
                          '朝弱いけん',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Column(
                          children: data
                              .map((e) => ListTile(
                                    leading: CircleAvatar(
                                      radius: 20,
                                      backgroundImage: NetworkImage(e[0]),
                                      backgroundColor: Colors.transparent,
                                    ),
                                    title: Text(e[1]),
                                    subtitle: Text(e[2]),
                                  ))
                              .toList(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
