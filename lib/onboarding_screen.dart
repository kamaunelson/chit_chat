import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:chit_chat/components/onboard_content.dart';
import 'package:flutter/widgets.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  // Initializes the state of the widget. It schedules a call to `showModalBottomSheet` to display the onboard content modal at a later time.
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(42),
            topRight: Radius.circular(42),
          ),
        ),
        builder: (_) => const OnboardContent(),
        );
    });
  }
  
  @override
  // Builds the widget tree for the screen  
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: Image.asset(
        "assets/bg.png",
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}