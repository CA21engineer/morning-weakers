import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:morning_weakers/models/models.dart';
import 'package:morning_weakers/pages/home/home_state.dart';
import 'package:provider/provider.dart';

class SourceLinkWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const int myId = 0;
    final Group group = context
        .select<HomeState, Group>((state) => state.hackathon.groups[myId]);

    final List<Link> otherLinks = group.otherUrls;

    final List<Link> allLinks = [
      Link(id: '', title: 'GitHub', url: group.githubUrl, iconUrl: ''),
      Link(id: '', title: 'Slide', url: group.slideUrl, iconUrl: '')
    ];

    otherLinks.forEach((link) => allLinks.add(
          Link(
              id: link.id,
              title: link.title,
              url: link.url,
              iconUrl: link.iconUrl),
        ));

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Column(children: <Widget>[
        const Text(
          '資料リンク',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        Column(
            children: allLinks
                .map(
                  (link) => ListTile(
                    title: Text(
                      link.title,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      link.url,
                      style: const TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                )
                .toList()),
      ]),
    );
  }
}
