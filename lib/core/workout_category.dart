import 'package:flutter/material.dart';
import 'package:ui_screens/core/home.dart';

class WorkoutCategory extends StatefulWidget {
  @override
  _GenderSelectionState createState() => _GenderSelectionState();
}

class _GenderSelectionState extends State<WorkoutCategory> {
  bool isBeginner = false;
  bool isIntermediate = false;
  bool isAdvance = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
            child: Icon(
              Icons.arrow_circle_left_outlined,
              color: Color(0xffD0FD3E),
              size: 50,
            ),
          ),
        ),
      ),
      backgroundColor: Colors.black,
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/assets/images/beginner_level.jpg',
                      width: 400,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    '    Beginner',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/assets/images/middle.jpg',
                      width: 400,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    '   intermediate',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/assets/images/advance.jpg',
                      width: 400,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    '    Advance',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  )
                ],
              ),

              //   GestureDetector(
              //     onTap: () {
              //       setState(() {
              //         isBeginner = true;
              //         isIntermediate = false;
              //         isAdvance = false;
              //       });
              //     },
              //     child: Container(
              //       width: 120,
              //       height: 120,
              //       decoration: BoxDecoration(
              //         shape: BoxShape.circle,
              //         color: isBeginner ? Color(0xffD0FD3E) : Colors.grey,
              //       ),
              //       child: Center(
              //         child: Text(
              //           'Beginner',
              //           style: TextStyle(color: Colors.black),
              //         ),
              //       ),
              //     ),
              //   ),
              //   SizedBox(height: 20),
              //   GestureDetector(
              //     onTap: () {
              //       setState(() {
              //         isBeginner = false;
              //         isIntermediate = true;
              //         isAdvance = false;
              //       });
              //     },
              //     child: Container(
              //       width: 120,
              //       height: 120,
              //       decoration: BoxDecoration(
              //         shape: BoxShape.circle,
              //         color: isIntermediate ? Color(0xffD0FD3E) : Colors.grey,
              //       ),
              //       child: Center(
              //         child: Text(
              //           'intermediate',
              //           style: TextStyle(color: Colors.black),
              //         ),
              //       ),
              //     ),
              //   ),
              //   SizedBox(height: 20),
              //   GestureDetector(
              //     onTap: () {
              //       setState(() {
              //         isBeginner = false;
              //         isIntermediate = false;
              //         isAdvance = true;
              //       });
              //     },
              //     child: Container(
              //       width: 120,
              //       height: 120,
              //       decoration: BoxDecoration(
              //         shape: BoxShape.circle,
              //         color: isAdvance ? Color(0xffD0FD3E) : Colors.grey,
              //       ),
              //       child: Center(
              //         child: Text(
              //           'Advance',
              //           style: TextStyle(color: Colors.black),
              //         ),
              //       ),
              //     ),
              //   ),
            ],
          ),
        ),
      ),
    );
  }
}
