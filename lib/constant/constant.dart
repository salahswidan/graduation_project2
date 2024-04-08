import 'package:flutter/material.dart';
class bottom_tab_bar extends StatelessWidget {
  const bottom_tab_bar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.home,
          color: Color(0xffD0FD3E),
        ),
        Icon(
          Icons.add_alert_sharp,
          color: Colors.white,
        ),
        Icon(
          Icons.bar_chart,
          color: Colors.white,
        ),
        Icon(
          Icons.panorama_fish_eye_outlined,
          color: Colors.white,
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
            style: TextStyle(color: Color(0xffD0FD3E), fontSize: 30),
          ),
          Icon(
            Icons.star_outlined,
            color: Colors.orange,
            size: 40,
          ),
          Icon(
            Icons.star_outlined,
            color: Colors.orange,
            size: 40,
          ),
          Icon(
            Icons.star_outlined,
            color: Colors.orange,
            size: 40,
          ),
          Icon(
            Icons.star_outlined,
            color: Colors.orange,
            size: 40,
          ),
          Icon(
            Icons.star_border_outlined,
            color: Colors.white,
            size: 40,
          )
        ],
      ),
    );
  }
}
