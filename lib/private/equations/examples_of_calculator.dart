import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:ui_screens/equations/bmi_screen.dart';
import 'package:ui_screens/constant/constant.dart';
// import 'package:ui_screens/equations/carb_calculator.dart';
// import 'package:ui_screens/equations/protein_calculator.dart';
// // import 'package:ui_screens/equations/stop_watch.dart';

import '../../core/home.dart';
import 'bmi_screen.dart';
import 'carb_calculator.dart';
import 'protein_calculator.dart';
import 'stop_watch.dart';

//import '../core/home.dart';

class ExamplesOfCalculator extends StatelessWidget {
  const ExamplesOfCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xff454545),
              ),
              height: 72,
              width: 381,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CarbCalculatorScreen()),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Calorie Calculator (Carb)',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        '>|',
                        style: TextStyle(
                            color: Color(0xffD0FD3E),
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BmiScreen()),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff454545),
                ),
                height: 72,
                width: 381,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Body Mass Index Calculator (BMI)',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        '>|',
                        style: TextStyle(
                            color: Color(0xffD0FD3E),
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xff454545),
              ),
              height: 72,
              width: 381,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProteinCalculatorScreen()),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Calorie Calculator (Protein)',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        '>|',
                        style: TextStyle(
                            color: Color(0xffD0FD3E),
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xff454545),
              ),
              height: 72,
              width: 381,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StopwatchApp()),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Stop watch',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        '>|',
                        style: TextStyle(
                            color: Color(0xffD0FD3E),
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: bottom_tab_bar(),
    );
  }
}
