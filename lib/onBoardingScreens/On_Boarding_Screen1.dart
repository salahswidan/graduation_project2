import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ui_screens/onBoardingScreens/On_Boarding_Screen2.dart';
import 'package:ui_screens/pages/login.dart';

class OnBoardingScreen1 extends StatefulWidget {
  const OnBoardingScreen1({Key? key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<OnBoardingScreen1> {
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            PageView.builder(
              controller: controller,
              itemCount: 3, // Replace with the number of pages you have
              itemBuilder: (BuildContext context, int index) {
                // Your page content here
                return SizedBox(
                  height: double.infinity,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/assets/images/t1.jpg',
                        height: 600,
                      ),
                      Center(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 500,
                            ),
                            SizedBox(height: 30),
                            Text(
                              '  MEET YOUR COACH,\nSTART YOUR JOURNEY ',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 28),
                            ),
                            SizedBox(
                              height: 120,
                            ),
                            Align(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SmoothPageIndicator(
                                    controller: controller,
                                    count:
                                        3, // Replace with the number of pages you have
                                    effect: ExpandingDotsEffect(
                                      activeDotColor: Color(0xffD0FD3E),
                                      dotColor: Colors.grey,
                                      dotHeight: 7,
                                      dotWidth: 10,
                                    ) // You can change the effect here
                                    ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 27),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Color(0xffD0FD3E)),
                                      padding: MaterialStateProperty.all(
                                          EdgeInsets.symmetric(
                                              horizontal: 60, vertical: 10)),
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(27))),
                                    ),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Login()),
                                        );
                                      },
                                      child: Text(
                                        " Skip ",
                                        style: TextStyle(
                                            fontSize: 24, color: Colors.black),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 160,
                                  ),
                                  //! NEXT
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                OnBoardingScreen2()),
                                      );
                                    },
                                    child: Icon(
                                      Icons.arrow_circle_right_outlined,
                                      color: Color(0xffD0FD3E),
                                      size: 60,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
