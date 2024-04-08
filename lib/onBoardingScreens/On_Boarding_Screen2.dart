import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ui_screens/onBoardingScreens/On_Boarding_Screen3.dart';

class OnBoardingScreen2 extends StatefulWidget {
  const OnBoardingScreen2({Key? key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<OnBoardingScreen2> {
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
                      Container(
                        child: Image.asset(
                          'assets/assets/images/t2 - Copy.jpg',
                          height: 540,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Center(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 500,
                            ),
                            SizedBox(height: 30),
                            Text(
                              'CREATE A WORKOUT PLAN \n            TO STAY FIT ',
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
                            Row(
                              children: [
                                SizedBox(
                                  width: 325,
                                ),
                                //! NEXT
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              OnBoardingScreen3()),
                                    );
                                  },
                                  child: Icon(
                                    Icons.arrow_circle_right_outlined,
                                    color: Color(0xffD0FD3E),
                                    size: 60,
                                  ),
                                )
                              ],
                            )
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
