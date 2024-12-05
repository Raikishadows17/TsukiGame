import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/level_selection_screen.dart';
import 'screens/color_level_screen.dart';

void main() {
  runApp(SukiGameApp());
}

class SukiGameApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aventura Mágica con Suki',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/levels': (context) => LevelSelectionScreen(),
        '/colors': (context) => ColorLevelScreen(),
      },
    );
  }
}
