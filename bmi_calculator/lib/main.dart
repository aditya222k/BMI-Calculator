import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          // primaryColor: Color(0xFF0A0E21),
          primaryColor: Color(0xffffffff),
          accentColor: Colors.purple,
          // scaffoldBackgroundColor: Color(0xFF0A0E21),
          // scaffoldBackgroundColor: Color(0xFFf4f9fe),
          scaffoldBackgroundColor: Color(0xffffffff),
          textTheme: TextTheme(body1: TextStyle(color: Colors.white))),
      home: InputPage(),
    );
  }
}
