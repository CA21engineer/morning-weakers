import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:morning_weakers/pages/home/home_state.dart';
import 'package:provider/provider.dart';

class AllGroupsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> groupIconUrls = context.select<HomeState, List<String>>(
        (state) =>
            state.hackathon.groups.map((group) => group.iconUrl).toList());

    return Container(
      padding: const EdgeInsets.all(12),
      child: ListView(children: [
        ListView(
          shrinkWrap: true,
          children: groupIconUrls
              .map(
                (url) => ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(url, fit: BoxFit.cover),
                ),
              )
              .toList(),
        ),
        const Icon(Icons.add, size: 52),
      ]),
    );
  }
}
