import 'package:flutter/material.dart';
import '../constant/constant.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios),
        title: Text(
          'Edit Profile',
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Center(
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xffD0FD3E),
                    radius: 85,
                    child: CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 80,
                    ),
                  ),
                  Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            buildTextFieldRow('Name', 'Saied Ahmed'),
            buildTextFieldRow('Email', 'barbarysaied2@gmail.com'),
            buildTextFieldRow('Password', '*************'),
            buildTextFieldRow('Date of Birth', '9/06/2002'),
            buildTextFieldRow('Country/Region', 'Ismailia'),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Color(0xffD0FD3E),
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13),
                  ),
                ),
                child: Text(
                  "Save Change",
                  style: TextStyle(fontSize: 24, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: bottom_tab_bar(),
    );
  }

  Widget buildTextFieldRow(String label, String hintText) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        Text(
          '   $label',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        SizedBox(height: 5),
        Container(
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.white),
          ),
          width: double.infinity,
          height: 50,
          padding: EdgeInsets.symmetric(horizontal: 26),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(color: Colors.grey),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
