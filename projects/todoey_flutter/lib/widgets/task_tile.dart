import 'package:flutter/material.dart';

// extracted widget for the list items

class TaskTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('This is a dummy task'),
      trailing: Checkbox(
        value: false,
        //onChanged: () {},
      ),
    );
  }
}
