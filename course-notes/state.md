# What is state and how do we manage it?

`UI = f(state)`

## Local State

- Information only need in a single place 

- `setState() {` can be used to control state here

- An example of a simple local set state

```
class TaskCheckbox extends StatefulWidget {
  @override
  _TaskCheckboxState createState() => _TaskCheckboxState();
}

bool isChecked = false;

class _TaskCheckboxState extends State<TaskCheckbox> {
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightGreenAccent,
      value: isChecked,
      onChanged: (newValue) {
        setState(() {
          isChecked = newValue;
        });
      },
    );
  }
}
```

## Global State

- Keeping the values of some of your variables and using them across different parts of your application.

- You can move the variable up a level to increase it's scope

```
import 'package:flutter/material.dart';

// extracted widget for the list items

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  void checkboxCallback(bool checkboxState) {
    setState(() {
      isChecked = checkboxState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a dummy task',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckbox(
          checkboxState: isChecked, toggleCheckboxState: checkboxCallback),
    );
  }
}
// extracted widget for the checkboxes

class TaskCheckbox extends StatelessWidget {
  final bool checkboxState;
  final Function toggleCheckboxState;

  TaskCheckbox({this.checkboxState, this.toggleCheckboxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightGreenAccent,
      value: checkboxState,
      onChanged: toggleCheckboxState,
    );
  }
}
```

  

