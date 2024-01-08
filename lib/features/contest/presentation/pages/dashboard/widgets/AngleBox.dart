import 'dart:math';
import 'package:flutter/material.dart';

class ParallelogramPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = Colors.blue;

    final path = Path();

    // Define the starting point of the shape
    final startPoint = Offset(0, size.height * 0.2);

    // Define the width and height of the parallelogram
    final width = size.width;
    final height = size.height * 0.6;

    // Calculate the endpoint and control points of the shape
    final endPoint = Offset(width, size.height * 0.2);
    final controlPoint1 = Offset(width * 0.3, height);
    final controlPoint2 = Offset(width * 0.7, height);

    // Move to the starting point
    path.moveTo(startPoint.dx, startPoint.dy);

    // Draw the parallelogram shape
    path.lineTo(controlPoint1.dx, controlPoint1.dy);
    path.lineTo(controlPoint2.dx, controlPoint2.dy);
    path.lineTo(endPoint.dx, endPoint.dy);

    // Fill the shape with the defined paint
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class ParallelogramWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: ParallelogramPainter(),
      child: SizedBox.expand(),
    );
  }
}
