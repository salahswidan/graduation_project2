import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:ui_screens/core/home.dart';
import 'package:ui_screens/exercises/beginner/increase_weight/Day1_Chest.dart';

import '../constant/constant.dart';

class NutritionProgramSeeAll extends StatelessWidget {
  const NutritionProgramSeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
            child: Icon(
              Icons.arrow_circle_left_outlined,
              color: Color(0xffD0FD3E),
              size: 50,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Nutrition Guide See All',
                style: TextStyle(color: Color(0xffD0FD3E), fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Drying',
                style: TextStyle(color: Color(0xffD0FD3E), fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/assets/images/Dietary_drying_1.png',
                width: 382,
                height: 237,
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/assets/images/Dietary_drying_2.png',
                width: 382,
                height: 237,
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/assets/images/Dietary_drying_3.png',
                width: 382,
                height: 237,
              ),
              Text(
                'Bulking',
                style: TextStyle(color: Color(0xffD0FD3E), fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/assets/images/chiken.png',
                width: 382,
                height: 237,
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/assets/images/pop.png',
                width: 382,
                height: 250,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Weight loss',
                style: TextStyle(color: Color(0xffD0FD3E), fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/assets/images/egg.png',
                width: 382,
                height: 237,
              ),
              Rate_Us(),
              bottom_tab_bar()
            ],
          ),
        ),
      ),
    );
  }
}
