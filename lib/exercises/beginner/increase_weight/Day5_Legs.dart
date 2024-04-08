// import 'package:flutter/material.dart';
// import 'package:ui_screens/exercises/beginner/increase_weight/Day1_Chest.dart';

// import '../../../constant/constant.dart';

// class BeginnerIncreaseWightDay5 extends StatelessWidget {
//   const BeginnerIncreaseWightDay5({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//       backgroundColor: Colors.black,
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Stack(
//               children: [
//                 Image.asset('assets/assets/images/Legs.png'),
//                 Padding(
//                   padding: const EdgeInsets.all(12.0),
//                   child: Icon(
//                     Icons.arrow_left_sharp,
//                     color: Colors.white,
//                     size: 40,
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 30.0, top: 160),
//                   child: Text(
//                     'Day 5 | Legs',
//                     style: TextStyle(color: Colors.white, fontSize: 24),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 30.0, top: 200),
//                   child: Row(
//                     children: [
//                       Text(
//                         '      6 Week ',
//                         style: TextStyle(color: Colors.white, fontSize: 18),
//                       ),
//                       Icon(
//                         Icons.local_fire_department_outlined,
//                         color: Color(0xffD0FD3E),
//                       ),
//                       Icon(
//                         Icons.local_fire_department_outlined,
//                         color: Color(0xffD0FD3E),
//                       ),
//                       Icon(
//                         Icons.local_fire_department_outlined,
//                         color: Color(0xffD0FD3E),
//                       ),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//             SizedBox(
//               height: 50,
//             ),
//             Container(
//               height: 120,
//               width: 382,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(30),
//                   color: Color.fromARGB(255, 83, 76, 76)),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(top: 10.0, left: 40),
//                     child: Text(
//                       'Legs Exercise',
//                       style: TextStyle(color: Colors.white, fontSize: 20),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 7.0, left: 40),
//                     child: Text(
//                       ' (Warm up the leg muscles)',
//                       style: TextStyle(color: Colors.white, fontSize: 20),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 20.0, left: 130),
//                     child: Text(
//                       '3 Sets 15-12-10 Reps',
//                       style: TextStyle(color: Color(0xffD0FD3E), fontSize: 20),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             Container(
//               height: 120,
//               width: 382,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(30),
//                   color: Color.fromARGB(255, 83, 76, 76)),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(top: 10.0, left: 40),
//                     child: Text(
//                       'Legs Exercise',
//                       style: TextStyle(color: Colors.white, fontSize: 20),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 7.0, left: 40),
//                     child: Text(
//                       '(Squats on the back bar )',
//                       style: TextStyle(color: Colors.white, fontSize: 20),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 20.0, left: 130),
//                     child: Text(
//                       '3 Sets 15-12-10 Reps',
//                       style: TextStyle(color: Color(0xffD0FD3E), fontSize: 20),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             Container(
//               height: 120,
//               width: 382,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(30),
//                   color: Color.fromARGB(255, 83, 76, 76)),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(top: 10.0, left: 40),
//                     child: Text(
//                       '  Legs Exercise',
//                       style: TextStyle(color: Colors.white, fontSize: 20),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 7.0, left: 40),
//                     child: Text(
//                       '(Walking with dumbbells)',
//                       style: TextStyle(color: Colors.white, fontSize: 20),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 20.0, left: 130),
//                     child: Text(
//                       '3 Sets 15-12-10 Reps',
//                       style: TextStyle(color: Color(0xffD0FD3E), fontSize: 20),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             Container(
//               height: 120,
//               width: 382,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(30),
//                   color: Color.fromARGB(255, 83, 76, 76)),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(top: 10.0, left: 40),
//                     child: Text(
//                       '  Legs Exercise',
//                       style: TextStyle(color: Colors.white, fontSize: 20),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 7.0, left: 40),
//                     child: Text(
//                       '(Front Leg swing)',
//                       style: TextStyle(color: Colors.white, fontSize: 20),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 20.0, left: 130),
//                     child: Text(
//                       '3 Sets 15-12-10 Reps',
//                       style: TextStyle(color: Color(0xffD0FD3E), fontSize: 20),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             Container(
//               height: 120,
//               width: 382,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(30),
//                   color: Color.fromARGB(255, 83, 76, 76)),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(top: 10.0, left: 40),
//                     child: Text(
//                       '  Legs Exercise',
//                       style: TextStyle(color: Colors.white, fontSize: 20),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 7.0, left: 40),
//                     child: Text(
//                       '(Back man swing)',
//                       style: TextStyle(color: Colors.white, fontSize: 20),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 20.0, left: 130),
//                     child: Text(
//                       '3 Sets 15-12-10 Reps',
//                       style: TextStyle(color: Color(0xffD0FD3E), fontSize: 20),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             Container(
//               height: 120,
//               width: 382,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(30),
//                   color: Color.fromARGB(255, 83, 76, 76)),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(top: 10.0, left: 40),
//                     child: Text(
//                       '     Legs Exercise',
//                       style: TextStyle(color: Colors.white, fontSize: 20),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 7.0, left: 40),
//                     child: Text(
//                       '(Calf press with dumbbelld )',
//                       style: TextStyle(color: Colors.white, fontSize: 20),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 20.0, left: 130),
//                     child: Text(
//                       '3 Sets 15-12-10 Reps',
//                       style: TextStyle(color: Color(0xffD0FD3E), fontSize: 20),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             Container(
//               height: 120,
//               width: 382,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(30),
//                   color: Color.fromARGB(255, 83, 76, 76)),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(top: 10.0, left: 40),
//                     child: Text(
//                       '   Legs Exercise',
//                       style: TextStyle(color: Colors.white, fontSize: 20),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 7.0, left: 40),
//                     child: Text(
//                       '( Press his calf with the device  )',
//                       style: TextStyle(color: Colors.white, fontSize: 20),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 20.0, left: 130),
//                     child: Text(
//                       '3 Sets 15-12-10 Reps',
//                       style: TextStyle(color: Color(0xffD0FD3E), fontSize: 20),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//        Rate_Us(),
//        bottom_tab_bar(),
//           ],
//         ),
//       ),
//     ));
//   }
// }


import 'package:flutter/material.dart';
import 'package:ui_screens/exercises/beginner/increase_weight/Day1_Chest.dart';

import '../../../constant/constant.dart';

class BeginnerIncreaseWightDay5 extends StatelessWidget {
  const BeginnerIncreaseWightDay5({Key? key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              _buildHeader(
                imagePath: 'assets/assets/images/Legs.png',
                title: 'Day 5 | Legs',
              ),
              SizedBox(height: 50),
              _buildExerciseCard(
                title: 'Legs Exercise',
                subtitle: '(Warm up the leg muscles)',
              ),
              SizedBox(height: 30),
              _buildExerciseCard(
                title: 'Legs Exercise',
                subtitle: '(Squats on the back bar)',
              ),
              SizedBox(height: 30),
              _buildExerciseCard(
                title: 'Legs Exercise',
                subtitle: '(Walking with dumbbells)',
              ),
              SizedBox(height: 30),
              _buildExerciseCard(
                title: 'Legs Exercise',
                subtitle: '(Front Leg swing)',
              ),
              SizedBox(height: 30),
              _buildExerciseCard(
                title: 'Legs Exercise',
                subtitle: '(Back man swing)',
              ),
              SizedBox(height: 30),
              _buildExerciseCard(
                title: 'Legs Exercise',
                subtitle: '(Calf press with dumbbelld)',
              ),
              SizedBox(height: 30),
              _buildExerciseCard(
                title: 'Legs Exercise',
                subtitle: '(Press his calf with the device)',
              ),
              Rate_Us(),
              bottom_tab_bar(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader({required String imagePath, required String title}) {
    return Stack(
      children: [
        Image.asset(imagePath),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Icon(
            Icons.arrow_left_sharp,
            color: Colors.white,
            size: 40,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30.0, top: 160),
          child: Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30.0, top: 200),
          child: Row(
            children: [
              Text(
                '      6 Week ',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Icon(
                Icons.local_fire_department_outlined,
                color: Color(0xffD0FD3E),
              ),
              Icon(
                Icons.local_fire_department_outlined,
                color: Color(0xffD0FD3E),
              ),
              Icon(
                Icons.local_fire_department_outlined,
                color: Color(0xffD0FD3E),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildExerciseCard({required String title, required String subtitle}) {
    return SizedBox(
      height: 120,
      width: 382,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color.fromARGB(255, 83, 76, 76),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 40),
              child: Text(
                title,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 7.0, left: 40),
              child: Text(
                subtitle,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 130),
              child: Text(
                '3 Sets 15-12-10 Reps',
                style: TextStyle(color: Color(0xffD0FD3E), fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
