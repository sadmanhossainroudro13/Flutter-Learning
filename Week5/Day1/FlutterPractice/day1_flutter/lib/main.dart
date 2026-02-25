import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Smiley Face using CustomPaint')),
        body: Center(
          child: CustomPaint(painter: ExercisePainter(), size: Size(300, 300)),
        ),
      ),
    );
  }
}

class ExercisePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    //facepaint
    Paint facepaint = Paint();
    facepaint.color = Colors.amber;
    facepaint.style = PaintingStyle.fill;
    Offset center = Offset(size.height / 2, size.width / 2);
    canvas.drawCircle(center, size.height / 2, facepaint);

    //eyePaint
    Paint eye = Paint()..color = Colors.black;

    canvas.drawCircle(Offset(size.width * 0.30, size.height * 0.4), 10, eye);
    canvas.drawCircle(Offset(size.width * 0.70, size.height * 0.4), 10, eye);

    //mouthPaint
    Paint mouth = Paint()..color = Colors.white;
    mouth.style = PaintingStyle.stroke;
    mouth.strokeWidth = 5;
    mouth.strokeCap = StrokeCap.round;
    mouth.strokeWidth = 5;
    mouth.color = Colors.black;

    Rect myBox = Rect.fromCircle(
      center: Offset(size.width / 2, size.height / 2),
      radius: 80,
    );
    canvas.drawArc(myBox, 0.785, 1.57, false, mouth);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
