import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'On_Boarding_Screen1.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    // Navigates to the onboarding page after 4 seconds
    void _navigateToOnboarding() {
      Future.delayed(Duration(seconds: 2), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => OnBoardingScreen1()),
        );
      });
    }

    // Call the function to start the countdown
    _navigateToOnboarding();

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: [
              Image.asset(
                'assets/assets/images/Splash.jpg',
              ),
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 270,
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Image.asset('assets/assets/images/icon.png'),
                    SizedBox(
                      height: 50,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '   Fitness \n        & \n   FEEDING ',
                          style: TextStyle(
                            color: Color(0xffD0FD3E),
                            fontSize: 48,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
