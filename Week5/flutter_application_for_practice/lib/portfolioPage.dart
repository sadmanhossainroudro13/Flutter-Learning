import 'dart:collection';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenOrientation = MediaQuery.of(context).orientation;

    String portraitOrLandscape;

    bool isPootrait;
    if (screenOrientation == Orientation.portrait) {
      isPootrait = true;
      portraitOrLandscape = "Screen is in Protrait...";
    } else {
      {
        isPootrait = false;
        portraitOrLandscape = "Screen is in landscape...";
      }
    }

    double width = screenSize.width;
    double height = screenSize.height;

    return Scaffold(
      appBar: AppBar(title: Text("MediaQuery Basics")),
      body: Center(
        child: Container(
          height: height * 0.3,
          width: width * .5,
          color: Colors.deepPurple,
          child: Center(
            child: Text(
              portraitOrLandscape,
              style: TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
