import 'dart:async';

import 'package:chatapp/screens/onboarding-screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => InitState();
}

class InitState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 3);
    return new Timer(duration, loginRoute);
  }

  loginRoute() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => OnboardingScreen()));
  }

  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 57, 252, 63),
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromARGB(255, 175, 219, 16),
                  Color.fromARGB(255, 155, 244, 54),
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              child: Image.asset(
                "assets/images/logo1.png",
                height: 200,
                width: 200,
              ),
            ),
          )
        ],
      ),
    );
  }
}
