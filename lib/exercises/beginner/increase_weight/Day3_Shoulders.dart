import 'package:flutter/material.dart';
import 'package:ui_screens/exercises/beginner/increase_weight/Day1_Chest.dart';

import '../../../constant/constant.dart';

class BeginnerIncreaseWightDay3 extends StatelessWidget {
  const BeginnerIncreaseWightDay3({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset('assets/assets/images/Shoulders.png'),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Icon(
                      Icons.arrow_left_sharp,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, top: 160),
                    child: Text(
                      'Day 3 | Shoulders&Tripess',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, top: 200),
                    child: Row(
                      children: [
                        Text(
                          '      6 Week ',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        Icon(
                          Icons.local_fire_department_outlined,
                          color: Color(0xffD0FD3E),
                        ),
                        Icon(
                          Icons.local_fire_department_outlined,
                          color: Color(0xffD0FD3E),
                        ),
                        Icon(
                          Icons.local_fire_department_outlined,
                          color: Color(0xffD0FD3E),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 50),
              _buildExerciseCard(
                title: 'Shoulders Exercise',
                subtitle: '(Front Bar)',
                imagePath: 'assets/assets/images/Front_bar.jpg',
              ),
              SizedBox(height: 30),
              _buildExerciseCard(
                title: 'Shoulders Exercise',
                subtitle: '(Front Dumbbell)',
                imagePath: 'assets/assets/images/Front_dumbbell.jpg',
              ),
              SizedBox(height: 30),
              _buildExerciseCard(
                title: 'Shoulders Exercise',
                subtitle: '(Front flap)',
                imagePath: 'assets/assets/images/Front_flap.jpg',
              ),
              SizedBox(height: 30),
              _buildExerciseCard(
                title: 'Shoulders Exercise',
                subtitle: '(Side flap)',
                imagePath: 'assets/assets/images/Side_flap.jpg',
              ),
              SizedBox(height: 30),
              _buildExerciseCard(
                title: 'Shoulders Exercise',
                subtitle: '(Butterfly)',
                imagePath: 'assets/assets/images/Butterfly.jpg',
              ),
              SizedBox(height: 30),
              _buildExerciseCard(
                title: 'Shoulders Exercise',
                subtitle: '(Back Dumbbell)',
                imagePath: 'assets/assets/images/Back_dumbbell.jpg',
              ),
              SizedBox(height: 30),
              _buildExerciseCard(
                title: 'Trapes Exercise',
                subtitle: '(Back Dumbbell)',
                imagePath: 'assets/assets/images/Trapess_exer.jpg',
              ),
              Rate_Us(),
              bottom_tab_bar(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildExerciseCard({
    required String title,
    required String subtitle,
    required String imagePath,
  }) {
    return Container(
      height: 120,
      width: 382,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color.fromARGB(255, 83, 76, 76),
      ),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 20),
                child: Text(
                  title,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7.0, left: 10),
                child: Text(
                  subtitle,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 30),
                child: Text(
                  '3 Sets 15-12-10 Reps',
                  style: TextStyle(color: Color(0xffD0FD3E), fontSize: 20),
                ),
              ),
            ],
          ),
          SizedBox(width: 3),
          Image.asset(
            imagePath,
            width: 160,
            height: 115,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
