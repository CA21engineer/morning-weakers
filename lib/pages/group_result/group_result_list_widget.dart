import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:morning_weakers/pages/group_result/group_result_state.dart';
import 'package:provider/provider.dart';
import 'package:morning_weakers/models/models.dart';

class GroupResultListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Group> groups = context.select<GroupResultState, List<Group>>((state) => state.hackathon.groups);

    return GridView.count(
      shrinkWrap: true,
      childAspectRatio: 0.1,
      crossAxisCount: 2,
      children: groups
          .map(
            (group) => SingleChildScrollView(
              child: Card(
                child: Container(
                  margin: const EdgeInsets.all(12),
                  child: Column(
                    children: <Widget>[
                      Text(
                        group.groupName,
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Column(
                        children: group.participants
                            .map(
                              (participant) => ListTile(
                                leading: CircleAvatar(
                                  radius: 20,
                                  backgroundImage: NetworkImage(participant.user.iconUrl),
                                  backgroundColor: Colors.transparent,
                                ),
                                title: Text(participant.user.displayName),
                                subtitle: Text(participant.desiredOccupations[0].stack.getValue()),
                              ),
                            )
                            .toList(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
