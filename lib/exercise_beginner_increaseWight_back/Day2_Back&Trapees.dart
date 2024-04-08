import 'package:flutter/material.dart';
import 'package:ui_screens/exercises/beginner/increase_weight/Day1_Chest.dart';

import '../../../constant/constant.dart';

class BeginnerIncreaseWightBackDay2 extends StatelessWidget {
  const BeginnerIncreaseWightBackDay2({super.key});

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
                  Image.asset('assets/assets/images/Back&Trapees2.png'),
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
                      'Day 2 | Back&Trapees',
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
                title: 'Back Exercise',
                subtitle: '    (Inverted bar)',
                imagePath: 'assets/assets/images/inverted_bar.jpg',
              ),
              SizedBox(height: 30),
              _buildExerciseCard(
                title: 'Back Exercise',
                subtitle: '  (Wide High pull)',
                imagePath: 'assets/assets/images/Wide_high_pull.jpg',
              ),
              SizedBox(height: 30),
              _buildExerciseCard(
                title: 'Back Exercise',
                subtitle: '(Tight high pull)',
                imagePath: 'assets/assets/images/Tight_high_poll.jpg',
              ),
              SizedBox(height: 30),
              _buildExerciseCard(
                title: 'Back Exercise',
                subtitle: '  (Dumbbell)',
                imagePath: 'assets/assets/images/Dumbbell.jpg',
              ),
              SizedBox(height: 30),
              _buildExerciseCard(
                title: 'Back Exercise',
                subtitle: '  (His mind)',
                imagePath: 'assets/assets/images/His_mind.jpg',
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 200.0, top: 20),
                child: Container(
                  height: 44,
                  width: 181,
                  child: Center(
                    child: Text(
                      "Exercise TRICEPS",
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 83, 76, 76),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(height: 30),
              _buildExerciseCard(
                title: 'Biceps Exercise',
                subtitle: '  (Bar zigzag dik)',
                imagePath: 'assets/assets/images/Bar_zigzag_dik2.jpg',
              ),
              SizedBox(height: 30),
              _buildExerciseCard(
                title: 'Biceps Exercise',
                subtitle: '(Exchange Dumbbells )',
                imagePath: 'assets/assets/images/Exchange_dimple.jpg',
              ),
              SizedBox(height: 30),
              _buildExerciseCard(
                title: 'Biceps Exercise',
                subtitle: '  (Dumbbell Hammer)',
                imagePath: 'assets/assets/images/Dumbbell_hammer.jpg',
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
