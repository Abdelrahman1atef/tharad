import 'package:flutter/material.dart';
import 'package:tharad/views/register.dart';

void main() {
  runApp(const Tharad());
}

class Tharad extends StatelessWidget {
  const Tharad({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF265355),
        useMaterial3: true,
        scaffoldBackgroundColor: Color(0xFFFFFFFF),
        hintColor: Color(0xFF998C8C),
        colorScheme: ColorScheme.fromSeed(
          ///primary Text Color
          primary: Color(0xFF0D1D1E),
          ///primary Container Color
          primaryContainer:Color(0xFF265355) ,
          ///secondary Text Color
          secondary: Color(0xFF42867B),
          ///secondary Container Color
          secondaryContainer: Color(0xFF5CC7A3),
          surface: Color(0xFFF4F7F6),
          outline: Color(0xFFF0E6DE),
          seedColor: Color(0xFF265355),
          error: Color(0xFFFF1020),
        ),
      ),
      home: const RegisterView(),
    );
  }
}
