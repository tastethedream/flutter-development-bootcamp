import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';
// extracted widget for the list

class TasksList extends StatelessWidget {
  @override
  // Build a tile for each item in the task list
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              taskTitle: taskData.tasks[index].name,
              isChecked: taskData.tasks[index].isDone,
              // checkboxCallback: (bool checkboxState) {
              //   setState(() {
              //     Provider.of<TaskData>(context).tasks[index].toggleDone();
              //   });
              //},
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
