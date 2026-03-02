import 'package:flutter/material.dart';
import 'package:flutter_application_for_practice/MediaQueryPractice2.dart';
import 'package:flutter_application_for_practice/portfolioPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenPractice(),
    );
  }
}
