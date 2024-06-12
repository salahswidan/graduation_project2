import 'dart:async';
import 'package:flutter/material.dart';
// import 'package:ui_screens/equations/examples_of_calculator.dart';
import 'package:ui_screens/private/home_private.dart';
import '../../core/home.dart';
import 'examples_of_calculator.dart';

void main() {
  runApp(StopwatchApp());
}

class StopwatchApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StopwatchScreen(),
    );
  }
}

class StopwatchScreen extends StatefulWidget {
  @override
  _StopwatchScreenState createState() => _StopwatchScreenState();
}

class _StopwatchScreenState extends State<StopwatchScreen> {
  late Stopwatch _stopwatch;
  late Timer _timer;
  String _elapsedTime = '00 : 00 : 00 : 00';
  List<String> _laps = [];

  @override
  void initState() {
    super.initState();
    _stopwatch = Stopwatch();
  }

  void _startStopwatch() {
    _stopwatch.start();
    _timer = Timer.periodic(Duration(milliseconds: 10), _updateTime);
  }

  void _pauseStopwatch() {
    _stopwatch.stop();
    _timer.cancel();
  }

  void _resetStopwatch() {
    _stopwatch.reset();
    _updateTime(null);
  }

  void _restartStopwatch() {
    _stopwatch.reset();
    _stopwatch.start();
    _timer = Timer.periodic(Duration(milliseconds: 10), _updateTime);
  }

  void _resetLaps() {
    setState(() {
      _laps.clear();
    });
  }

  void _lap() {
    setState(() {
      _laps.add(_elapsedTime);
    });
  }

  void _updateTime(Timer? timer) {
    if (_stopwatch.isRunning) {
      setState(() {
        final elapsed = _stopwatch.elapsed;
        final hours = elapsed.inHours.toString().padLeft(2, '0');
        final minutes = (elapsed.inMinutes % 60).toString().padLeft(2, '0');
        final seconds = (elapsed.inSeconds % 60).toString().padLeft(2, '0');
        final milliseconds =
            (elapsed.inMilliseconds % 100).toString().padLeft(2, '0');
        _elapsedTime = '$hours : $minutes : $seconds : $milliseconds';
      });
    }
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  Widget _buildControlButton(String text, VoidCallback onPressed) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 120,
        height: 30,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.grey[800],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ExamplesOfCalculator()),
              );
            },
            child: Icon(
              Icons.arrow_circle_left_outlined,
              color: Color(0xffD0FD3E),
              size: 50,
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              _elapsedTime,
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            padding: EdgeInsets.symmetric(horizontal: 20),
            children: [
              _buildControlButton('Start', _startStopwatch),
              _buildControlButton('Restart', _restartStopwatch),
              _buildControlButton('Pause', _pauseStopwatch),
              _buildControlButton('Lap', _lap),
              _buildControlButton('Reset', _resetStopwatch),
              _buildControlButton('Reset Laps', _resetLaps),
            ],
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: _laps.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    'Lap ${index + 1}',
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Text(
                    _laps[index],
                    style: TextStyle(color: Colors.white),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
