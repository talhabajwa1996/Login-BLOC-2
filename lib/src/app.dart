import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

class MyApp extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      title: 'This is my app',
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}
