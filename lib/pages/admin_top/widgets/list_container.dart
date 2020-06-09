import 'package:flutter/material.dart';

class ListContainer extends StatelessWidget {
  const ListContainer({
    @required this.onTap,
    @required this.titleName,
  });

  final Function onTap;
  final String titleName;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        titleName,
        style: const TextStyle(fontSize: 20, color: Colors.black),
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () => onTap,
    );
  }
}
