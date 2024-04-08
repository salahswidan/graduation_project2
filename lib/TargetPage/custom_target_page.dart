import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ui_screens/core/home.dart';

class CustomTargetPage extends StatelessWidget {
  const CustomTargetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'Exercise Name',
          style: TextStyle(color: Colors.black, fontSize: 28),
        ),
        elevation: 0,
        backgroundColor: Color(0xffD0FD3E),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.home_outlined,
              color: Colors.black,
              size: 40,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => HomeScreen())));
            },
          ),
        ],
        centerTitle: true,
        leading: Icon(
          Icons.arrow_circle_left_outlined,
          color: Colors.black,
          size: 50,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Image.asset(
              'assets/assets/images/Flat_bar_Full.png', // iamfe index
              width: 334,
              height: 177,
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => HomeScreen()))); // url video
              },
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.ondemand_video_outlined,
                        size: 44,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Explanatory Video',
                        style: TextStyle(fontSize: 24),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xffD0FD3E),
                ),
                width: 314,
                height: 64,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Target Muscle',
              style: TextStyle(fontSize: 32, color: Colors.white),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Pectoralis Major Muscle',
              style: TextStyle(fontSize: 24, color: Colors.white70),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Synergistic Muscles',
              style: TextStyle(fontSize: 32, color: Colors.white),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Chest Muscle : Primary Impact\n              Triceps Muscl \n         Front Deltoid Muscles',
              style: TextStyle(fontSize: 24, color: Colors.white70),
            ),
          ],
        ),
      ),
    );
  }
}
