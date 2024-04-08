import 'package:flutter/material.dart';
import 'package:ui_screens/exercises/beginner/increase_weight/Day1_Chest.dart';

import '../../../constant/constant.dart';

class BeginnerIncreaseWightBackDay4 extends StatelessWidget {
  const BeginnerIncreaseWightBackDay4({super.key});

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
                  Image.asset('assets/assets/images/shoulder_trapess.jpg'),
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
                      'Day 4 | Shoulders&Trapess',
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
                subtitle: '    (Front Bar)',
                imagePath: 'assets/assets/images/front_bar.webp',
              ),
              SizedBox(height: 30),
              _buildExerciseCard(
                title: 'Shoulders Exercise',
                subtitle: '  (Rear SMS bar)',
                imagePath: 'assets/assets/images/Rear_sms.png',
              ),
              SizedBox(height: 30),
              _buildExerciseCard(
                title: 'Shoulders Exercise',
                subtitle: '  (Side dumbbell)',
                imagePath: 'assets/assets/images/Side_dumbbell.png',
              ),
              SizedBox(height: 30),
              _buildExerciseCard(
                title: 'Shoulders Exercise',
                subtitle: '  (Front flap)',
                imagePath: 'assets/assets/images/front_flap.png',
              ),
              SizedBox(height: 30),
              _buildExerciseCard(
                title: 'Shoulders Exercise',
                subtitle: '  (Side flap)',
                imagePath: 'assets/assets/images/side_flap.png',
              ),
              SizedBox(height: 30),
              _buildExerciseCard(
                title: 'Shoulders Exercise',
                subtitle: '(Back shoulder mattress)',
                imagePath: 'assets/assets/images/Back_shoulder.png',
              ),
              SizedBox(height: 30),
              _buildExerciseCard(
                title: 'Shoulders Exercise',
                subtitle: '(Double Dumbbells pull )',
                imagePath: 'assets/assets/images/Double_dumbbells.png',
              ),
              SizedBox(
                height: 30,
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
                  style: TextStyle(color: Colors.white, fontSize: 18),
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
