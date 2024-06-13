import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ui_screens/private/food_bulking/bulking_and_drying_level_2.dart';

import '../Drying/drying_levels.dart';
import '../Top_sources/Top_Sources.dart';
import '../constant/constant.dart';
import '../core/Nutrition_Program_see_all.dart';
import '../core/nutrition_guide_see_all.dart';
import '../core/training_programs_see_all.dart';
import '../healthy_recipes/bulking_levels.dart';
import '../loss_weight/loss_wight_level_one.dart';
import '../supplement/supplement_screen.dart';
import 'equations/carb_calculator.dart';
import 'equations/stop_watch.dart';
import 'food_bulking/bulking_and_drying_level_1.dart';

class HomePrivate extends StatelessWidget {
  const HomePrivate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Icon(Icons.menu),
          ),
        ],
      ),
      //!  singlechildScollview
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Calculating calories for ',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Text(
                    'Carbs_Protein_BMI',
                    style: TextStyle(color: Color(0xffD0FD3E), fontSize: 18),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 2),
                    height: 1,
                    width: 360,
                    color: Color(0xffD0FD3E),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CarbCalculatorScreen()),
                  );
                },
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset('assets/assets/images/calories.jpg'),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 120,
                      child: Text(
                        'CALORIES',
                        style: TextStyle(
                          color: Color(0xffD0FD3E),
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          backgroundColor: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'Stop Watch',
                    style: TextStyle(color: Color(0xffD0FD3E), fontSize: 16),
                  ),
                  SizedBox(
                    width: 170,
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 2),
                    height: 1,
                    width: 90,
                    color: Color(0xffD0FD3E),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StopwatchApp()),
                  );
                },
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset('assets/assets/images/watch.png'),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 145,
                      child: Text(
                        'START',
                        style: TextStyle(
                          color: Color(0xffD0FD3E),
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          //  backgroundColor: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'Nuttrition Programs(Private)',
                    style: TextStyle(color: Color(0xffD0FD3E), fontSize: 16),
                  ),
                  SizedBox(
                    width: 170,
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 2),
                    height: 1,
                    width: 210,
                    color: Color(0xffD0FD3E),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FoodBulkingAndDryingUp1()),
                    );
                  },
                  child: Image.asset('assets/assets/images/Private_NP.png')),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FoodBulkingAndDryingUp1()),
                  );
                },
                child: Image.asset(
                  'assets/assets/images/dpfd1.png',
                  fit: BoxFit.fill,
                  width: 600,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FoodBulkingAndDryingUp2()),
                  );
                },
                child: Image.asset(
                  'assets/assets/images/dpfdd2.png',
                  fit: BoxFit.fill,
                  width: 600,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FoodBulkingAndDryingUp2()),
                  );
                },
                child: Image.asset(
                  'assets/assets/images/dpfd2.png',
                  fit: BoxFit.fill,
                  width: 600,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    'Training Programs',
                    style: TextStyle(color: Color(0xffD0FD3E), fontSize: 18),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 2),
                    height: 1,
                    width: 160,
                    color: Color(0xffD0FD3E),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DryingLevels()),
                    );
                  },
                  child:
                      Image.asset('assets/assets/images/Learn_the_basic.png')),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HealthyRecipesBulkingUp1()),
                    );
                  },
                  child: Image.asset(
                      'assets/assets/images/Learn_the_basic_2.png')),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: bottom_tab_bar(),
    );
  }
}
