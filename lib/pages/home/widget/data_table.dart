import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:morning_weakers/models/models.dart';
import 'package:morning_weakers/pages/home/data/data_table_model.dart';
import 'package:morning_weakers/pages/home/home_state.dart';
import 'package:provider/provider.dart';
import 'package:morning_weakers/extensions/enum.dart';

class DataTableView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const int myId = 0;

    final List<Participant> teamPeople =
        context.select<HomeState, List<Participant>>(
            (state) => state.hackathon.groups[myId].participants);

    final List<DataTableModel> dataTableList = teamPeople.map((participant) {
      final String tempIconUrl = participant.user.iconUrl;
      final String tempDisplayName = participant.user.displayName;
      final List<TechnicalStack> tempTechnicalStacks =
          participant.user.technicalStacks;
      final int tempWorkingDays = participant.workingDays;
      return DataTableModel(
        iconUrl: tempIconUrl,
        displayName: tempDisplayName,
        technicalStacks: tempTechnicalStacks,
        workingDays: tempWorkingDays,
      );
    }).toList();

    final List<String> columnTitles = [
      'icon',
      'name',
      'time',
      'stacks',
    ];

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        children: <Widget>[
          const Text(
            'メンバーデータ',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              sortColumnIndex: 1,
              sortAscending: true,
              columns: columnTitles
                  .map(
                    (title) => DataColumn(label: Text(title)),
                  )
                  .toList(),
              rows: dataTableList
                  .map(
                    (row) => DataRow(cells: [
                      DataCell(
                          CircleAvatar(
                            radius: 20,
                            backgroundImage: NetworkImage(row.iconUrl),
                            backgroundColor: Colors.transparent,
                          ),
                      ),
                      DataCell(Text(row.displayName)),
                      DataCell(Text(row.workingDays.toString())),
                      DataCell(
                        Row(
                          children: row.technicalStacks
                              .map((technicalStack) =>
                                  Text(technicalStack.stack.getEnumString()))
                              .toList(),
                        ),
                      ),
                    ]),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
