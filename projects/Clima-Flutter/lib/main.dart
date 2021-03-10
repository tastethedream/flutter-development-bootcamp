import 'package:flutter/material.dart';
import 'package:clima/screens/loading_screen.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart' as DotEnv;
// import 'package:flutter_test/flutter_test.dart';
// import 'dart:developer';

void main() => runApp(MyApp());
// Future main() async {
//   await DotEnv.load('.env');
//   //log('MyKey: ${DotEnv.env['MY_KEY']}');
//   runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: LoadingScreen(),
    );
  }
}
