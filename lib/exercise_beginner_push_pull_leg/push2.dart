import 'package:flutter/material.dart';
import 'package:ui_screens/exercises/beginner/increase_weight/Day1_Chest.dart';

import '../../../TargetPage/custom_target_page.dart';
import '../../../constant/constant.dart';

class Push_2 extends StatelessWidget {
  const Push_2({super.key});
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
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.arrow_left_sharp,
                  color: Colors.white,
                  size: 40,
                ),
                Center(
                  child: Text(
                      'This system contains complete front \n \t  body exercises as broken drown in \n \t                  front of you ',
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ),
                _buildExerciseHeader(title: 'Exercise Chest'),
                SizedBox(height: 30),
                _exerciseContainer(
                    context,
                    ' Exercise Chest',
                    '(High Dumbbells )',
                    'assets/assets/images/High_dumbbees.jpg',
                    'assets/assets/images/High_dumbbells.gif'),
                SizedBox(height: 30),
                _exerciseContainer(
                    context,
                    'Exercise Chest',
                    '(Flat Dumbbells)',
                    'assets/assets/images/Flat_dumbbells.jpg',
                    'assets/assets/images/Flat_dumbbells.gif'),
                SizedBox(height: 30),
                _exerciseContainer(
                    context,
                    'Exercise Chest',
                    '(Assembly on cable)',
                    'assets/assets/images/Assembly_on_cable.png',
                    'assets/assets/images/Assembly_on_cable.gif'),
                SizedBox(height: 30),
                _buildExerciseHeader(title: 'Exercise Front shoulder'),
                SizedBox(height: 30),
                _exerciseContainer(
                    context,
                    'Exercise Shoulders',
                    '(Front Bar)',
                    'assets/assets/images/front_bar3.png',
                    'assets/assets/images/Front_bar.gif'),
                SizedBox(height: 30),
                _exerciseContainer(
                    context,
                    'Exercise Shoulders',
                    '(Flap it on rope)',
                    'assets/assets/images/flap_it_on_the_rope.png',
                    'assets/assets/images/Flap_it_on_the_rope.gif'),
                SizedBox(height: 30),
                _exerciseContainer(
                    context,
                    'Exercise Shoulders',
                    '(Side device )',
                    'assets/assets/images/side_device.png',
                    'assets/assets/images/Side_device.gif'),
                SizedBox(height: 30),
                _buildExerciseHeader(title: 'Exercise Triceps'),
                SizedBox(height: 30),
                _exerciseContainer(
                    context,
                    'Exercise Biceps',
                    '(Rope on the cable)',
                    'assets/assets/images/Rope_on_the_cable2.png',
                    'assets/assets/images/FLAT_BAR.gif'),
                SizedBox(height: 30),
                _exerciseContainer(
                    context,
                    'Exercise Shoulders',
                    '(Parallel)',
                    'assets/assets/images/parallel.png',
                    'assets/assets/images/Parallel.gif'),
                Rate_Us(),
                bottom_tab_bar(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildExerciseHeader({required String title}) {
    return Padding(
      padding: const EdgeInsets.only(right: 200.0, top: 20),
      child: Container(
        height: 44,
        width: 250,
        child: Center(
          child: Text(
            title,
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            //  color: Color.fromARGB(255, 83, 76, 76),
            color: Color(0xffD0FD3E)),
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
