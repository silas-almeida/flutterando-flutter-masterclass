import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mockups/screens/tinder_home_screen.dart';

class CustomColors {
  static const Color purple = Color(0xff7462e6);
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Screens Mockups',
      home:  const TinderHomeScreen(), // const BankHomeScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: TextTheme(bodyMedium: GoogleFonts.roboto())),
    );
  }
}
