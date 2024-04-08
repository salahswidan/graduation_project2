import 'package:flutter/material.dart';
import 'package:ui_screens/core/Nutrition_Program_see_all.dart';
import 'package:ui_screens/core/nutrition_guide_see_all.dart';
import 'package:ui_screens/core/training_programs_see_all.dart';

import '../constant/constant.dart';
import '../exercises/beginner/increase_weight/Day1_Chest.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
                    'Training programs',
                    style: TextStyle(color: Color(0xffD0FD3E), fontSize: 18),
                  ),
                  SizedBox(
                    width: 170,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TrainingPrograms()),
                      );
                    },
                    child: Text(
                      'See All',
                      style: TextStyle(color: Color(0xffD0FD3E), fontSize: 18),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/assets/images/r1.jpg',
                fit: BoxFit.fill,
                width: 600,
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    'Exercise guide',
                    style: TextStyle(color: Color(0xffD0FD3E), fontSize: 18),
                  ),
                  SizedBox(
                    width: 205,
                  ),
                  Text(
                    'See All',
                    style: TextStyle(color: Color(0xffD0FD3E), fontSize: 18),
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xffD9D9D9),
                    maxRadius: 45,
                  ),
                  CircleAvatar(
                    backgroundColor: Color(0xffD9D9D9),
                    maxRadius: 45,
                  ),
                  CircleAvatar(
                    backgroundColor: Color(0xffD9D9D9),
                    maxRadius: 45,
                  ),
                  CircleAvatar(
                    backgroundColor: Color(0xffD9D9D9),
                    maxRadius: 45,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    'Nutrition Programs',
                    style: TextStyle(color: Color(0xffD0FD3E), fontSize: 18),
                  ),
                  SizedBox(
                    width: 170,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NutritionProgramSeeAll()),
                      );
                    },
                    child: Text(
                      'See All',
                      style: TextStyle(color: Color(0xffD0FD3E), fontSize: 18),
                    ),
                  )
                ],
              ),
              Image.asset('assets/assets/images/Dietart.jpg'),
              SizedBox(
                height: 20,
              ),
              Image.asset('assets/assets/images/Nutritional.jpg'),
              SizedBox(
                height: 20,
              ),
              Image.asset('assets/assets/images/weight loss.jpg'),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    'Nutrition Guide',
                    style: TextStyle(color: Color(0xffD0FD3E), fontSize: 18),
                  ),
                  SizedBox(
                    width: 190,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Nutritionguide()),
                      );
                    },
                    child: Text(
                      'See All',
                      style: TextStyle(color: Color(0xffD0FD3E), fontSize: 18),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/assets/images/protein.png',
                    height: 189,
                    width: 182,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Image.asset(
                    'assets/assets/images/carbs.png',
                    height: 189,
                    width: 182,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/assets/images/Dariy.png',
                    height: 189,
                    width: 182,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Image.asset(
                    'assets/assets/images/fat.png',
                    height: 189,
                    width: 182,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    'Nutrition supplements',
                    style: TextStyle(color: Color(0xffD0FD3E), fontSize: 18),
                  ),
                  SizedBox(
                    width: 150,
                  ),
                  Text(
                    'See All',
                    style: TextStyle(color: Color(0xffD0FD3E), fontSize: 18),
                  )
                ],
              ),
              Image.asset('assets/assets/images/supplements.jpg'),
              Image.asset('assets/assets/images/supplements.jpg'),
            ],
          ),
        ),
      ),
      bottomNavigationBar: bottom_tab_bar(),
    );
  }
}
