import 'package:flutter/material.dart';

import '../constant/constant.dart';
import '../exercises/beginner/increase_weight/Day1_Chest.dart';

class LossWightUp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(50.0),
            child: AppBar(
              backgroundColor: Colors.black,
              bottom: CustomTabBar(),
            ),
          ),
          body: TabBarView(
            children: [
              //! loss weight
              Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      //! lable 1
                      Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffD0FD3E)),
                        child: Center(
                            child: Text(
                          "First meal : Breakfast",
                          style: TextStyle(fontSize: 18),
                        )),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Text(
                            '                        Quantity   Calories   Protein   Carb   Fat',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              'Coffee              1                2               0           0          0',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.white,
                      ),

                      //! lable 2
                      Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffD0FD3E)),
                        child: Center(
                            child: Text(
                          "Second meal : Snack",
                          style: TextStyle(fontSize: 18),
                        )),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Text(
                            '                        Quantity   Calories   Protein   Carb   Fat',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              ' Almond         40 g           230         8.48       8.66  19.76',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              'Medium-sized \n       apple      150 g          150          0            19.5        0',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              'Multivamin\nSupplement   1 tablet       -               -            -              -',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.white,
                      ),
                      //!  lable 3
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffD0FD3E)),
                        child: Center(
                            child: Text(
                          "Thired meal : Breakfast",
                          style: TextStyle(fontSize: 18),
                        )),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Text(
                            '                        Quantity   Calories   Protein   Carb   Fat',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              ' Chicken\n breast             200g         242           48           0       3.6',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              'Basmati\nRice                  100 g       348           7.2       77         0.8',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              'Sweet\nPotato              150 g       129           2.4        30      0.15',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Medium-sizes salad with tomatoes, cucumbers and a little  \n                                            olive oil ',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),

                      //!  lable 4
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffD0FD3E)),
                        child: Center(
                            child: Text(
                          "Fourth meal : Pre work out Snack",
                          style: TextStyle(fontSize: 18),
                        )),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Text(
                            '                        Quantity   Calories   Protein   Carb   Fat',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              ' Whey\n protein        1 scoop         120           24           3       1',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              'Oats               80 g             277.6       9.6     47.2     5.52',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              'Almond         30 g             162.5       6.36   6.50   14.82',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              'Banana         100 g             89            1.1       23      0.3',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Preparation method:Mix oats with almonds and \n   protein, then add water and put everything in\n                         the electric blender',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),

                      //!  lable 5
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffD0FD3E)),
                        child: Center(
                            child: Text(
                          "Fifth meal : Post Workout",
                          style: TextStyle(fontSize: 18),
                        )),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Text(
                            '                        Quantity   Calories   Protein   Carb   Fat',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              ' Chicken\n breast             200g         242           48           0       3.6',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              'Basmati\nrice                  100 g       348           7.2       77         0.8',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.white,
                      ),

                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Medium salad example: tomatoes with \n      cucumbers with a little olive oil ',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: [
                          Text(
                            '                         Quantity        Protein       Carb          Fat',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              'Total               2796.6           194.3       323.7       71.8    ',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.white,
                      ),

                      Rate_Us(),
                      bottom_tab_bar(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTabBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(25.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 230,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.black, Colors.black],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: TabBar(
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Color(0xffD0FD3E),
        ),
        tabs: [
          _buildTab('Loss Wight '),
        ],
      ),
    );
  }

  Widget _buildTab(String text) {
    return Tab(
      child: Center(
        child: Text(text),
      ),
    );
  }
}
