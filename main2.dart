import 'package:flutter/material.dart';

import 'Screens/settings_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Settings',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SettingsPage(),
    );
  }
}