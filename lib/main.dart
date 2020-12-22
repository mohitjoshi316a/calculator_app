import 'package:calculator_app/HomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CalCulatorApp());
}

class CalCulatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculator App",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
        accentColor: Colors.red,
      ),
      home: HomePage(),
    );
  }
}
