import 'package:flutter/material.dart';
import 'package:ui_screens/exercises/beginner/increase_weight/Day1_Chest.dart';

import '../../../constant/constant.dart';
import '../TargetPage/custom_target_page.dart';

class BeginnerIncreaseWightBackDay4 extends StatelessWidget {
  const BeginnerIncreaseWightBackDay4({super.key});

  Widget _exerciseContainer(BuildContext context, String title, String subTitle,
      String imagePath, String Gifimage) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CustomTargetPage(
              exerciseName: subTitle,
              //      exerciseImage: imagePath,
              Gifimage: Gifimage,
            ),
          ),
        );
      },
      child: Container(
        height: 120,
        width: 382,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color.fromARGB(255, 83, 76, 76),
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
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 7.0, left: 10),
                  child: Text(
                    subTitle,
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 30),
                  child: Text(
                    '3 Sets 15-12-10 Reps',
                    style:
                        const TextStyle(color: Color(0xffD0FD3E), fontSize: 20),
                  ),
                ),
              ],
            ),
            const SizedBox(width: 3),
            Image.asset(
              imagePath,
              width: 160,
              height: 115,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }

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
              _exerciseContainer(
                  context,
                  'Shoulders Exercise',
                  '    (Front Bar)',
                  'assets/assets/images/front_bar.webp',
                  'assets/assets/images/Front_bar.gif'),
              SizedBox(height: 30),
              _exerciseContainer(
                  context,
                  'Shoulders Exercise',
                  '  (Rear SMS bar)',
                  'assets/assets/images/Rear_sms.png',
                  'assets/assets/images/Rear_sms.gif'),
              SizedBox(height: 30),
              _exerciseContainer(
                  context,
                  'Shoulders Exercise',
                  '  (Side dumbbell)',
                  'assets/assets/images/Side_dumbbell.png',
                  'assets/assets/images/Side_dumbbell.gif'),
              SizedBox(height: 30),
              _exerciseContainer(
                  context,
                  'Shoulders Exercise',
                  '  (Front flap)',
                  'assets/assets/images/front_flap.png',
                  'assets/assets/images/Front_flap.gif'),
              SizedBox(height: 30),
              _exerciseContainer(
                  context,
                  'Shoulders Exercise',
                  '  (Side flap)',
                  'assets/assets/images/side_flap.png',
                  'assets/assets/images/Side_flap.gif'),
              SizedBox(height: 30),
              _exerciseContainer(
                  context,
                  'Shoulders Exercise',
                  'Backshoulder mattress',
                  'assets/assets/images/Back_shoulder.png',
                  'assets/assets/images/Backshoulder_mattress.gif'),
              SizedBox(height: 30),
              _exerciseContainer(
                  context,
                  'Shoulders Exercise',
                  '(DoubleDumbbells pull)',
                  'assets/assets/images/Double_dumbbells.png',
                  'assets/assets/images/Double_dubbell_pull.gif'),
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
}
