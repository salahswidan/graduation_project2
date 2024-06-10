import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:ui_screens/pages/Forget_password.dart';

import '../constant/constant.dart';

class PaymentResendCode extends StatefulWidget {
  @override
  _PinputExampleState createState() => _PinputExampleState();
}

class _PinputExampleState extends State<PaymentResendCode> {
  TextEditingController _textEditingController = TextEditingController();
  String _inputText = '';

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Payment',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        backgroundColor: Colors.amber.withOpacity(0),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ForgetPassword()),
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),
            Divider(
              height: 2,
              color: Colors.white,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Pay with Card Number : ',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            SizedBox(
              height: 27,
            ),
            Text(
              ' Enter your 4-digit card pin to confirm this \n payment',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Pinput(
                  controller: _textEditingController,
                  onChanged: (value) {
                    setState(() {
                      _inputText = value;
                    });
                  },
                  cursor: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 9),
                        width: 22,
                        height: 2,
                        color: Color(0xffD0FD3E), // Bottom cursor color
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xffD0FD3E)),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 30, vertical: 10)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(27))),
                  ),
                  child: Text(
                    "Confirm Payment",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              ' Your personal data will be used to process your \n order, support your experience throughout this \n website, and for other purposes described in our \n privacy policy.',
              style: TextStyle(color: Colors.white, fontSize: 17),
            )
          ],
        ),
      ),
      bottomNavigationBar: bottom_tab_bar(),
    );
  }
}
