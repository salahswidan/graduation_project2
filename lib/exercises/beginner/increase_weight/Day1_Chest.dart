import 'package:flutter/material.dart';
import '../../../constant/constant.dart';

class BeginnerIncreaseWeightDay1 extends StatelessWidget {
  const BeginnerIncreaseWeightDay1({Key? key}) : super(key: key);

  Widget _exerciseContainer(String title, String subTitle, String imagePath) {
    return Container(
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
                  Image.asset('assets/assets/images/chest.png'),
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Icon(
                      Icons.arrow_left_sharp,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 30.0, top: 160),
                    child: Text(
                      'Day 1 | CHEST',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, top: 200),
                    child: Row(
                      children: const [
                        Text(
                          '  6 Week ',
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
                  ),
                ],
              ),
              const SizedBox(height: 50),
              _exerciseContainer('Chest Exercise', '      (Flat Bar)',
                  'assets/assets/images/flat_bar.jpg'),
              const SizedBox(height: 30),
              _exerciseContainer('Chest Exercise', '      (High Bar)',
                  'assets/assets/images/High_bar.jpeg'),
              const SizedBox(height: 30),
              _exerciseContainer('Chest Exercise', '(Flat Dumbbells)',
                  'assets/assets/images/Flat_dumbbells.jpg'),
              const SizedBox(height: 30),
              _exerciseContainer('Chest Exercise', '(High Dumbbells)',
                  'assets/assets/images/High_dumbbees.jpg'),
              const SizedBox(height: 30),
              _exerciseContainer('Chest Exercise', ' (Svend Press)',
                  'assets/assets/images/Svend_press.jpg'),
              const RateUs(),
              const BottomTabBar(),
            ],
          ),
        ),
      ),
    );
  }
}

class BottomTabBar extends StatelessWidget {
  const BottomTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Icon(
          Icons.home,
          color: Color(0xffD0FD3E),
        ),
        Icon(
          Icons.add_alert_sharp,
          color: Colors.white,
        ),
        Icon(
          Icons.bar_chart,
          color: Colors.white,
        ),
        Icon(
          Icons.panorama_fish_eye_outlined,
          color: Colors.white,
        ),
      ],
    );
  }
}

class RateUs extends StatelessWidget {
  const RateUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Text(
            '   Rate Us',
            style: TextStyle(color: Color(0xffD0FD3E), fontSize: 30),
          ),
          Icon(
            Icons.star_outlined,
            color: Colors.orange,
            size: 40,
          ),
          Icon(
            Icons.star_outlined,
            color: Colors.orange,
            size: 40,
          ),
          Icon(
            Icons.star_outlined,
            color: Colors.orange,
            size: 40,
          ),
          Icon(
            Icons.star_outlined,
            color: Colors.orange,
            size: 40,
          ),
          Icon(
            Icons.star_border_outlined,
            color: Colors.white,
            size: 40,
          ),
        ],
      ),
    );
  }
}
