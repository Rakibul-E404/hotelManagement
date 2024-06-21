import 'package:flutter/material.dart';
import 'appbarsegment.dart'; // Import AppBarSegment widget
import 'Segment1.dart'; // Import Segment1 widget
import 'Segment2.dart';
import 'Segment3.dart';
import 'Segment4.dart';
import 'Segment5.dart';
import 'Segment6.dart';
import 'Segment7.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFCEE3D9),
        appBar: AppBar(
          toolbarHeight: 100,
          flexibleSpace: Container(
            color: const Color(0xFFCEE3D9),
            child: const AppBarSegment(), // Use AppBarSegment widget
          ),
        ),
        body: ListView(
          children: const [
            Segment1(),
            Segment2(),
            Segment3(),
            Segment4(),
            Segment5(),
            Segment6(),
            Segment7(), // Use Segment1 widget
            // Add more widgets here if needed
          ],
        ),
      ),
    );
  }
}




/*
///----Adaptive Screen----///
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Adaptive UI',
      home: AdaptiveUIExample(),
    );
  }
}

class AdaptiveUIExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adaptive UI Example'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          // Determine screen width and height
          double screenWidth = MediaQuery.of(context).size.width;
          double screenHeight = MediaQuery.of(context).size.height;

          // Determine orientation
          Orientation orientation = MediaQuery.of(context).orientation;

          // Check orientation and adjust layout accordingly
          if (orientation == Orientation.portrait) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.blue,
                  width: screenWidth * 0.8,
                  height: screenHeight * 0.3,
                  child: Center(
                    child: Text(
                      'Top Container',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  color: Colors.orange,
                  width: screenWidth * 0.8,
                  height: screenHeight * 0.3,
                  child: Center(
                    child: Text(
                      'Bottom Container',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            );
          } else {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.blue,
                  width: screenWidth * 0.4,
                  height: screenHeight * 0.8,
                  child: Center(
                    child: Text(
                      'Left Container',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  color: Colors.orange,
                  width: screenWidth * 0.4,
                  height: screenHeight * 0.8,
                  child: Center(
                    child: Text(
                      'Right Container',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}

*/