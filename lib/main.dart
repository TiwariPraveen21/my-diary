import 'package:flutter/material.dart';
import 'package:my_diary/home_screen.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        cardTheme: const CardTheme(
          surfaceTintColor: Colors.white,
          color: Colors.white
        )
      ),
      home: const HomeScreen(),
    );
  }
}