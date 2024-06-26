import 'package:flutter/material.dart';
import 'package:ses1406/screens/bottom_navigation.dart';
import 'package:ses1406/screens/home_screen.dart';
import './screens/login_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.green),
      home: LoginScreen(),
    );
  }
}
