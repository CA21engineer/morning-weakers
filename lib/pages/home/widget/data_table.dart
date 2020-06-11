import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:morning_weakers/models/models.dart';
import 'package:morning_weakers/pages/home/data/data_table_model.dart';
import 'package:morning_weakers/pages/home/home_state.dart';
import 'package:provider/provider.dart';
import 'package:morning_weakers/pages/home/enum.dart';

class DataTableView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const int myId = 0;

    final List<Participant> teamPeople =
        context.select<HomeState, List<Participant>>((state) {
      return state.hackathon.groups[myId].participants;
    });

    final List<DataTableModel> dataTableList = teamPeople.map((participant) {
      final String aIconUrl = participant.user.iconUrl;
      final String aDisplayName = participant.user.displayName;
      final List<TechnicalStack> aTechnicalStacks =
          participant.user.technicalStacks;
      final int aWorkingDays = participant.workingDays;
      return DataTableModel(
        iconUrl: aIconUrl,
        displayName: aDisplayName,
        technicalStacks: aTechnicalStacks,
        workingDays: aWorkingDays,
      );
    }).toList();

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
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
              columns: const [
                DataColumn(label: Text('アイコン')),
                DataColumn(label: Text('ユーザ名')),
                DataColumn(label: Text('合計稼働時間')),
                DataColumn(label: Text('技術スタック')),
              ],
              rows: dataTableList
                  .map(
                    (row) => DataRow(cells: [
                      DataCell(
                        Image.network(row.iconUrl),
                      ),
                      DataCell(Text(row.displayName)),
                      DataCell(Text(row.workingDays.toString())),
                      DataCell(
                        Row(
                            children: row.technicalStacks
                                .map((technicalStack) =>
                                    Text(technicalStack.stack.getStackTech()))
                                .toList()),
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
