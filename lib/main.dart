import 'package:flutter/material.dart';
import 'package:playandpizza/screens/onboarding.dart';
import 'package:playandpizza/screens/pages_layout.dart';
import 'package:playandpizza/screens/signup_screen.dart';
import 'package:playandpizza/screens/login_screen.dart';

int coins = 837; // initial coin
int slices = 3; // initial slices

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const OnboardingScreen(),
      routes: {
        '/home': (context) => const PagesLayout(page: 0),
        '/login': (context) => LoginScreen(),
        '/signup': (context) => SignupScreen()
      },
    );
  }
}
