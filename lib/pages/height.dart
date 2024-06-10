import 'package:flutter/material.dart';
import 'package:ui_screens/pages/age.dart';
import 'package:ui_screens/pages/goal.dart';

class HeightPicker extends StatefulWidget {
  @override
  _HeightPickerState createState() => _HeightPickerState();
}

class _HeightPickerState extends State<HeightPicker> {
  int selectedHeight = 150; // Default height in centimeters

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/assets/images/Height.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(70.0),
            child: Text(
              'WHAT\'S YOUR HEIGHT?',
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 110.0),
            child: Text(
              '        THIS HELPS US CREATE YOUR PERSONALIZED PLAN',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Center(
            child: Container(
              height: 200,
              child: ListWheelScrollView(
                itemExtent: 80, // Increase height for each item
                diameterRatio: 1.5,
                physics: FixedExtentScrollPhysics(),
                children: List.generate(
                  100, // Number of heights to display
                  (index) {
                    final height = 150 + index; // Starting from 150 cm
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '$height cm',
                          style: TextStyle(fontSize: 32, color: Colors.white),
                        ),
                        Center(
                          child: Container(
                            width: 100,
                            child: Divider(
                              color: Color(0xffD0FD3E),
                              height: 5,
                              thickness: 2,
                              indent: 2,
                              endIndent: 2,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
                onSelectedItemChanged: (index) {
                  setState(() {
                    selectedHeight = 150 + index; // Starting from 150 cm
                  });
                },
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Age()),
                    );
                  },
                  child: Icon(
                    Icons.arrow_circle_left_outlined,
                    color: Color(0xffD0FD3E),
                    size: 60,
                  ),
                ),
                SizedBox(
                  width: 180,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xffD0FD3E)),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 25, vertical: 10)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(27))),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Goal()),
                      );
                    },
                    child: Text(
                      " Next > ",
                      style: TextStyle(fontSize: 24, color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
