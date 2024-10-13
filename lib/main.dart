import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 27, 27, 27),
          foregroundColor: const Color.fromARGB(255, 247, 244, 244),
          title: const Text("Chessboard"),
          centerTitle: true, // Center the AppBar content
        ),
        body: Container(
          height: 900,
          color: const Color.fromARGB(255, 56, 55, 55), // Set the background color here
          padding: const EdgeInsets.only(top: 20), // Add padding to create separation
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Row 1
                buildChessRow(true),
                // Row 2
                buildChessRow(false),
                // Row 3
                buildChessRow(true),
                // Row 4
                buildChessRow(false),
                // Row 5
                buildChessRow(true),
                // Row 6
                buildChessRow(false),
                // Row 7
                buildChessRow(true),
                // Row 8
                buildChessRow(false),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Function to build a row in the chessboard
Widget buildChessRow(bool isBlackFirst, {bool isFirstRow = false}) {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Add margin-top to the first column only for the first row
        customContainer(
          75, 
          75, 
          isBlackFirst ? Colors.black : Colors.white, 
          "", 
          marginTop: isFirstRow ? 20.0 : 0.0 // Add margin to the first row
        ),
        customContainer(75, 75, isBlackFirst ? Colors.white : Colors.black, ""),
        customContainer(75, 75, isBlackFirst ? Colors.black : Colors.white, ""),
        customContainer(75, 75, isBlackFirst ? Colors.white : Colors.black, ""),
        customContainer(75, 75, isBlackFirst ? Colors.black : Colors.white, ""),
        customContainer(75, 75, isBlackFirst ? Colors.white : Colors.black, ""),
        customContainer(75, 75, isBlackFirst ? Colors.black : Colors.white, ""),
        customContainer(75, 75, isBlackFirst ? Colors.white : Colors.black, ""),
      ],
    ),
  );
}

// Modified customContainer to accept marginTop
Widget customContainer(
    double height, double width, Color color, String title,
    {double marginTop = 0.0}) {
  return Container(
    height: height,
    width: width,
    color: color,
    margin: EdgeInsets.only(top: marginTop), // Apply the top margin
    alignment: Alignment.center,
    child: Text(title),
  );
}
