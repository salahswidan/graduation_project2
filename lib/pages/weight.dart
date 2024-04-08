// import 'package:flutter/material.dart';

// class WeightHorizontalPicker extends StatefulWidget {
//   @override
//   _WeightHorizontalPickerState createState() => _WeightHorizontalPickerState();
// }

// class _WeightHorizontalPickerState extends State<WeightHorizontalPicker> {
//   int selectedWeight = 50; // Default weight value
//   final int minValue = 30; // Minimum weight value
//   final int maxValue = 279; // Maximum weight value

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Select Your Weight'),
//       ),
//       body: Center(
//         child: Container(
//           height: 100,
//           child: ListWheelScrollView(
//             itemExtent: 100,
//           //  axis: Axis.horizontal,
//             physics: FixedExtentScrollPhysics(),
//             children: List.generate(
//               maxValue - minValue + 1,
//               (index) {
//                 final weight = minValue + index;
//                 return Center(
//                   child: Text(
//                     '$weight kg',
//                     style: TextStyle(fontSize: 24),
//                   ),
//                 );
//               },
//             ),
//             onSelectedItemChanged: (index) {
//               setState(() {
//                 selectedWeight = minValue + index;
//               });
//             },
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           print('Selected Weight: $selectedWeight kg');
//           // Do something with the selected weight
//         },
//         child: Icon(Icons.check),
//       ),
//     );
//   }
// }





