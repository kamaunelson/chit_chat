import 'package:flutter/material.dart';

import 'package:chit_chat/onboarding_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
@override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Chit Chat',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home: OnboardingScreen(),
    );
  }
}
