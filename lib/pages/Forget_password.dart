import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:ui_screens/pages/login.dart';

class ForgetPassword extends StatefulWidget {
  @override
  _PinputExampleState createState() => _PinputExampleState();
}

class _PinputExampleState extends State<ForgetPassword> {
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
        backgroundColor: Colors.amber.withOpacity(0),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Login()),
            );
          },
        ),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                '    FORGET PASSWORD ?',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'ENTER YOUR INFORMATION BELOW OR\nLOGIN WITH A OTHER ACCOUNT  ',
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(66),
            ),
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 80),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Email ",
                  hintStyle: TextStyle(color: Colors.white),
                  border: InputBorder.none),
            ),
          ),
          Divider(
            thickness: 1,
            color: Colors.grey,
            indent: 78,
            endIndent: 50,
          ),
          SizedBox(
            height: 220,
          ),
          Text(
            'Try another way',
            style: TextStyle(color: Color(0xffD0FD3E), fontSize: 15),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color(0xffD0FD3E)),
              padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(horizontal: 90, vertical: 10)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(27))),
            ),
            child: Text(
              "Send",
              style: TextStyle(fontSize: 24, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
