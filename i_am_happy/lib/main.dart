import 'package:flutter/material.dart';

// The main function is the starting point for all Flutter apps
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('I Am Happy'),
          backgroundColor: Colors.lightGreen[900],
        ),
        body: Center(
          child: Image(image: AssetImage('images/face.png')),
        ),
      ),
    ),
  );
}
