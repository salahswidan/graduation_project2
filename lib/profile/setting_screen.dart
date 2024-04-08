import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../constant/constant.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

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
          'Settings',
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Account',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            ProfileItem(
              icon: Icon(
                Icons.person_2_outlined,
                color: Color(0xffD0FD3E),
              ),
              text: 'Edit Profil',
            ),
            ProfileItem(
              icon: Icon(
                Icons.privacy_tip_outlined,
                color: Color(0xffD0FD3E),
              ),
              text: 'Security',
            ),
            ProfileItem(
              icon: Icon(
                Icons.notifications_none,
                color: Color(0xffD0FD3E),
              ),
              text: 'Notification',
            ),
            ProfileItem(
              icon: Icon(
                Icons.lock_outlined,
                color: Color(0xffD0FD3E),
              ),
              text: 'privacy',
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Support & About',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            ProfileItem(
              icon: Icon(
                Icons.credit_card,
                color: Color(0xffD0FD3E),
              ),
              text: 'My Subscribtion',
            ),
            ProfileItem(
              icon: Icon(
                Icons.question_mark_rounded,
                color: Color(0xffD0FD3E),
              ),
              text: 'Help & Support',
            ),
            ProfileItem(
              icon: Icon(
                Icons.info_outlined,
                color: Color(0xffD0FD3E),
              ),
              text: 'Terms and Policies',
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Cache & cellular',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            ProfileItem(
              icon: Icon(
                Icons.delete_outline,
                color: Color(0xffD0FD3E),
              ),
              text: 'Free up space ',
            ),
            ProfileItem(
              icon: Icon(
                Icons.data_exploration_outlined,
                color: Color(0xffD0FD3E),
              ),
              text: 'Date Sever',
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Actions',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            ProfileItem(
              icon: Icon(
                Icons.flag_outlined,
                color: Color(0xffD0FD3E),
              ),
              text: 'Report a problem',
            ),
            ProfileItem(
              icon: Icon(
                Icons.people_alt_outlined,
                color: Color(0xffD0FD3E),
              ),
              text: 'Add account',
            ),
            ProfileItem(
              icon: Icon(
                Icons.logout_outlined,
                color: Color(0xffD0FD3E),
              ),
              text: 'Log out',
            ),
          ],
        ),
      ),
      bottomNavigationBar: bottom_tab_bar(),
    );
  }
}

class ProfileItem extends StatelessWidget {
  final Icon icon;
  final String text;
  final Color backgroundColor;
  final double width;
  final double height;
  //final String PageLink;
  final double horizontalPadding;

  const ProfileItem({
    required this.icon,
    required this.text,
    // required this.PageLink,
    this.backgroundColor = const Color.fromARGB(255, 46, 54, 58),
    this.width = 380,
    this.height = 47,
    this.horizontalPadding = 8.0,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute(builder: (context) => PageLink()),
      //   );
      // },
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: EdgeInsets.all(horizontalPadding),
          child: Row(
            children: [
              icon,
              SizedBox(width: 50),
              Text(
                text,
                style: TextStyle(color: Colors.white, fontSize: 17),
              )
            ],
          ),
        ),
      ),
    );
  }
}
