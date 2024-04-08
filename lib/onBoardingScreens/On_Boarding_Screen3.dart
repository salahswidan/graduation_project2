import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../pages/login.dart';

class OnBoardingScreen3 extends StatefulWidget {
  const OnBoardingScreen3({Key? key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<OnBoardingScreen3> {
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
                          'assets/assets/images/Rectangle .png',
                          height: 540,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Center(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 530,
                            ),
                            SizedBox(height: 30),
                            Text(
                              '            ACTION IS THE  \n      KEY TO ALL SUCCESS ',
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
                              height: 40,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 230,
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Color(0xffD0FD3E)),
                                    padding: MaterialStateProperty.all(
                                        EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 10)),
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
                                      " Start Now > ",
                                      style: TextStyle(
                                          fontSize: 24, color: Colors.black),
                                    ),
                                  ),
                                ),
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
