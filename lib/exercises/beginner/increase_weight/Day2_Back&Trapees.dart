import 'package:flutter/material.dart';
import 'package:ui_screens/exercises/beginner/increase_weight/Day1_Chest.dart';

import '../../../TargetPage/custom_target_page.dart';
import '../../../constant/constant.dart';

class BeginnerIncreaseWightDay2 extends StatelessWidget {
  const BeginnerIncreaseWightDay2({super.key});

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
                  Image.asset('assets/assets/images/Back&Trapees.png'),
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
                      'Day 2 | Back',
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
                  'Back Exercise',
                  '(Deadlift)',
                  'assets/assets/images/Deadlift.jpg',
                  'assets/assets/images/Deadlift.gif'),
              SizedBox(height: 30),
              _exerciseContainer(
                  context,
                  'Back Exercise',
                  '(Bar SMS)',
                  'assets/assets/images/Bar_pull_up.webp',
                  'assets/assets/images/Bar_sms.gif'),
              SizedBox(height: 30),
              _exerciseContainer(
                  context,
                  'Back Exercise',
                  '(Wide high pull )',
                  'assets/assets/images/Tight_front_poll_7.jpg',
                  'assets/assets/images/Wide_high_pull.gif'),
              SizedBox(height: 30),
              _exerciseContainer(
                  context,
                  'Back Exercise',
                  '(Hummer pulled)',
                  'assets/assets/images/Pull_on_the_cable.jpg',
                  'assets/assets/images/Hummer_pulled.gif'),
              SizedBox(height: 30),
              _exerciseContainer(
                  context,
                  'Back Exercise',
                  '(Wide trumpet)',
                  'assets/assets/images/Wide_trumet.jpg',
                  'assets/assets/images/Svend_Press.gif'),
              SizedBox(height: 30),
              _exerciseContainer(
                  context,
                  'Back Exercise',
                  '( Double Dubbell Pull)',
                  'assets/assets/images/Double_dumbbell_pull.jpg',
                  'assets/assets/images/Double_dubbell_pull.gif'),
              Rate_Us(),
              bottom_tab_bar(),
            ],
          ),
        ),
      ),
    );
  }
}
