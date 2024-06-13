import 'package:flutter/material.dart';
import 'package:ui_screens/pages/age.dart';
import 'package:ui_screens/pages/core/login.dart';
import 'package:ui_screens/pages/login.dart';
import 'package:ui_screens/pages/verification.dart';

class GenderSelection extends StatefulWidget {
  @override
  _GenderSelectionState createState() => _GenderSelectionState();
}

class _GenderSelectionState extends State<GenderSelection> {
  bool isMaleSelected = false;
  bool isFemaleSelected = false;
  String backgroundImage =
      'assets/assets/images/Gender.jpg'; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(backgroundImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  'TELL US ABOUT YOURSELF!',
                  style: TextStyle(color: Colors.white, fontSize: 28),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '         TO GIVE YOU A BETTER EXPERIENCE WE NEED \n                            TO KNOW YOUR GENDER',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                SizedBox(
                  height: 200,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isMaleSelected = true;
                      isFemaleSelected = false;
                      backgroundImage = 'assets/assets/images/Gender.jpg';
                    });
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: isMaleSelected ? Color(0xffD0FD3E) : Colors.grey,
                    ),
                    child: Center(
                      child: Text(
                        'Male',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isMaleSelected = false;
                      isFemaleSelected = true;
                      backgroundImage = 'assets/assets/images/girl2.png';
                    });
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: isFemaleSelected ? Color(0xffD0FD3E) : Colors.grey,
                    ),
                    child: Center(
                      child: Text(
                        'Female',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 280,
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
                            MaterialPageRoute(builder: (context) => const Login()),
                          );
                        },
                        child: Icon(
                          Icons.arrow_circle_left_outlined,
                          color: Color(0xffD0FD3E),
                          size: 60,
                        ),
                      ),
                      SizedBox(
                        width: 210,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Add your logic for the Skip button
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xffD0FD3E)),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 10)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(27))),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Age()),
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
          ),
        ),
      ),
    );
  }
}
