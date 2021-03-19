import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/tasks_list.dart';
import 'package:todoey_flutter/screens/add_task_screen.dart';
import 'package:todoey_flutter/models/task.dart';

// Task screen main widget- contains styling and structure for the top half of this page

class TasksScreen extends StatefulWidget {
  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  List<Task> tasks = [
    Task(name: 'Water Plants'),
    Task(name: 'Mow Lawn'),
    Task(name: 'Weed Flowerbeds'),
  ];

  Widget buildBottomSheet;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightGreenAccent,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightGreenAccent,
          child: Icon(Icons.add),
          onPressed: () {
            // create bottom sheet when pressed and call buildBottomSheet()
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) => AddTaskScreen((newTaskTitle) {
                setState(() {
                  tasks.add(Task(name: newTaskTitle));
                });
                //remove the bottom sheet after adding new list item
                Navigator.pop(context);
              }),
              backgroundColor: Colors.transparent,
            );
          },
        ),
        //wrap container in another column so that the expanded widget for the bottom half
        // of the screen can sit outside the the column with the padding and therefore have no padding
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(
                  top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    child: Icon(
                      Icons.list,
                      size: 30.0,
                      color: Colors.lightGreenAccent,
                    ),
                    backgroundColor: Colors.white,
                    radius: 30.0,
                  ),
                  // to create the gap between the icon and the text
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Todoey',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    //display the number of tasks under the app title
                    '${tasks.length} Tasks',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                //line up the list items with the text and icon above it
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  // round off the top corners of the container
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                // The List
                child: TasksList(tasks),
              ),
            )
          ],
        ));
  }
}
