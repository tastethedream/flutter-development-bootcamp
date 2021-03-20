import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Water Plants'),
    Task(name: 'Mow Lawn'),
    Task(name: 'Weed Flowerbeds'),
  ];

  int get taskCount {
    return tasks.length;
  }
}
