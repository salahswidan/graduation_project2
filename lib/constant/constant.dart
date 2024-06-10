import 'package:flutter/material.dart';
import 'package:ui_screens/core/home.dart';
import 'package:ui_screens/profile/profile_page.dart';

class bottom_tab_bar extends StatefulWidget {
  const bottom_tab_bar({Key? key}) : super(key: key);

  @override
  _BottomTabBarState createState() => _BottomTabBarState();
}

class _BottomTabBarState extends State<bottom_tab_bar> {
  int _selectedIndex = 0;

  void _onIconTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProfilePage()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () => _onIconTapped(0),
          child: Icon(
            Icons.home,
            color: _selectedIndex == 0 ? Color(0xffD0FD3E) : Colors.white,
          ),
        ),
        GestureDetector(
          onTap: () => _onIconTapped(1),
          child: Icon(
            Icons.add_alert_sharp,
            color: _selectedIndex == 1 ? Color(0xffD0FD3E) : Colors.white,
          ),
        ),
        GestureDetector(
          onTap: () => _onIconTapped(2),
          child: Icon(
            Icons.bar_chart,
            color: _selectedIndex == 2 ? Color(0xffD0FD3E) : Colors.white,
          ),
        ),
        GestureDetector(
          onTap: () => _onIconTapped(3),
          child: Icon(
            Icons.person_3_outlined,
            color: _selectedIndex == 3 ? Color(0xffD0FD3E) : Colors.white,
          ),
        ),
      ],
    );
  }
}

class Rate_Us extends StatelessWidget {
  const Rate_Us({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            '   Rate Us',
            style: TextStyle(color: Color(0xffD0FD3E), fontSize: 27),
          ),
          Icon(
            Icons.star_outlined,
            color: Colors.orange,
            size: 35,
          ),
          Icon(
            Icons.star_outlined,
            color: Colors.orange,
            size: 35,
          ),
          Icon(
            Icons.star_outlined,
            color: Colors.orange,
            size: 35,
          ),
          Icon(
            Icons.star_outlined,
            color: Colors.orange,
            size: 35,
          ),
          Icon(
            Icons.star_border_outlined,
            color: Colors.white,
            size: 35,
          )
        ],
      ),
    );
  }
}

Widget _buildExerciseHeader({required String title}) {
  return Padding(
    padding: const EdgeInsets.only(right: 200.0, top: 20),
    child: Container(
      height: 44,
      width: 250,
      child: Center(
        child: Text(
          title,
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          //  color: Color.fromARGB(255, 83, 76, 76),
          color: Color(0xffD0FD3E)),
    ),
  );
}

Widget _buildExerciseCard({
  required String title,
  required String subtitle,
  required String imagePath,
}) {
  return Container(
    height: 120,
    width: 382,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      color: Color.fromARGB(255, 83, 76, 76),
    ),
    child: Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 20),
              child: Text(
                title,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 7.0, left: 10),
              child: Text(
                subtitle,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 30),
              child: Text(
                '3 Sets 15-12-10 Reps',
                style: TextStyle(color: Color(0xffD0FD3E), fontSize: 20),
              ),
            ),
          ],
        ),
        SizedBox(width: 3),
        Image.asset(
          imagePath,
          width: 160,
          height: 115,
          fit: BoxFit.cover,
        ),
      ],
    ),
  );
}
