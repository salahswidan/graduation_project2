import 'package:flutter/material.dart';
import 'package:ui_screens/pages/gender.dart';
import 'package:ui_screens/pages/height.dart';

class Age extends StatefulWidget {
  @override
  _AgePickerState createState() => _AgePickerState();
}

class _AgePickerState extends State<Age> {
  int selectedAge = 1; // Default age

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/assets/images/Age.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(70.0),
            child: Text(
              'HOW OLD ARE YOU ?',
              style: TextStyle(fontSize: 28, color: Colors.white),
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
              height: 300,
              child: ListWheelScrollView(
                itemExtent: 60,
                diameterRatio: 1.5,
                physics: FixedExtentScrollPhysics(),
                children: List.generate(
                  100, // Number of ages to display
                  (index) {
                    final age = index + 1;
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          age.toString(),
                          style: TextStyle(fontSize: 40, color: Colors.white),
                        ),
                        Center(
                          child: Container(
                            width: 150,
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
                    selectedAge = index + 1;
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
                      MaterialPageRoute(
                          builder: (context) => GenderSelection()),
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
                  onPressed: () {
                    // Add your logic for the Skip button
                  },
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
                        MaterialPageRoute(builder: (context) => HeightPicker()),
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
