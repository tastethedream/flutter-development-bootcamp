import 'package:flutter/material.dart';

// Task screen main widget- contains styling and structure for the top half of this page

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightGreenAccent,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightGreenAccent,
          child: Icon(Icons.add),
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
                    '12 Tasks',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
            ),
            // Bottom part of screen for the list
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  // round off the top corners of the container
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
