import 'package:flutter/material.dart';
import 'file:///C:/Users/Hisham/Desktop/bmicalculator/flutter_app/lib/Screens/InfoScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.lightBlue),
      home: Directionality(
        textDirection: TextDirection.ltr,
        child: InfoScreen(),
      ),
    );
  }
}
