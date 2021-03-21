import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Water Plants'),
    Task(name: 'Mow Lawn'),
    Task(name: 'Weed Flowerbeds'),
  ];
// to allow access to private version of _tasks - import dart:collection for access to the unmodifiable list view
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

//adding a new task
  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  //updating a task
  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  // delete task from screen
  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
