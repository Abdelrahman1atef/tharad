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
      home: const RegisterView(),
      debugShowCheckedModeBanner: false,
      builder: (context, child) =>
          Directionality(textDirection: TextDirection.rtl, child: child!),
      theme: ThemeData(
        primaryColor: const Color(0xFF265355),
        scaffoldBackgroundColor: const Color(0xFFFFFFFF),
        hintColor: const Color(0xFF998C8C),
        colorScheme: ColorScheme.fromSeed(
          ///primary Text Color
          primary: const Color(0xFF0D1D1E),

          ///primary Container Color
          primaryContainer: const Color(0xFF265355),

          ///secondary Text Color
          secondary: const Color(0xFF42867B),

          ///secondary Container Color
          secondaryContainer: const Color(0xFF5CC7A3),
          surface: const Color(0xFFF4F7F6),
          outline: const Color(0xFFF0E6DE),
          seedColor: const Color(0xFF265355),
          error: const Color(0xFFFF1020),
        ),
        fontFamily: "Tajawal",
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            fontFamily: "Tajawal",
            color: Color(0xFFFFFFFF),
            fontWeight: FontWeight.w700,
            fontSize: 30,
          ),
          headlineMedium: TextStyle(
            fontFamily: "Tajawal",
            color: Color(0xFF0D1D1E),
            fontWeight: FontWeight.w700,
            fontSize: 30,
          ),
          titleMedium: TextStyle(
            fontFamily: "Tajawal",
            color: Color(0xFF0D1D1E),
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
          titleSmall: TextStyle(
            fontFamily: "Tajawal",
            color: Color(0xFF0D1D1E),
            fontWeight: FontWeight.w500,
            fontSize: 15,
          ),
          labelMedium: TextStyle(
            fontFamily: "Alexandria",
            color: Color(0xFF998C8C),
            fontSize: 12,
            fontVariations: [
              FontVariation("wght", 400),
            ]
          ),
          labelSmall: TextStyle(
            fontFamily: "Alexandria",
            color: Color(0xFF998C8C),
            fontSize: 8,
            fontVariations: [
              FontVariation("wght", 400),
            ]
          ),
          bodyMedium: TextStyle(
            fontFamily: "Tajawal",
            color: Color(0xFFFFFFFF),
            fontWeight: FontWeight.w700,
            fontSize: 18,
          ),
          bodySmall: TextStyle(
            fontFamily: "Tajawal",
            color: Color(0xFF0D1D1E),
            fontWeight: FontWeight.w500,
            fontSize: 15,

          ),
          displayMedium: TextStyle(
            fontFamily: "Tajawal",
            color: Color(0xFF265355),
            fontWeight: FontWeight.w400,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
