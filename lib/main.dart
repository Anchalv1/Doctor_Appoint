import 'package:flutter/material.dart';
import 'package:doctor_appoint/screen/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: WelcomeScreen(),
        );
    }
}