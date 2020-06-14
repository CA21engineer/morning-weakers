import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:morning_weakers/pages/home/home_state.dart';
import 'package:provider/provider.dart';
import 'package:morning_weakers/pages/admin_input_hackathon_info/admin_input_hackathon_info_page.dart';

class AllGroupsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> hackathonIconUrls =
        context.select<HomeState, List<String>>((state) => state.joined.hackathonIconUrls.map((state) => state).toList());

    return Container(
      padding: const EdgeInsets.all(8),
      child: ListView(children: [
        ListView(
          shrinkWrap: true,
          children: hackathonIconUrls
              .map(
                (url) => Container(
                  margin: const EdgeInsets.all(4),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(url, fit: BoxFit.cover),
                  ),
                ),
              )
              .toList(),
        ),
        FlatButton(
          padding: const EdgeInsets.all(4),
          child: const Icon(Icons.add, size: 52),
          onPressed: () => Navigator.push<void>(context, MaterialPageRoute(builder: (_) => AdminInputHackathonInfoPage())),
        )
      ]),
    );
  }
}
