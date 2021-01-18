import 'package:flutter/material.dart';
class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Color(0xfffcc7fb);
    paint.style = PaintingStyle.fill;


    var path = Path();

    path.moveTo(size.width, size.width );

    path.lineTo(size.width * 0.5, size.height - 100);
    //path.quadraticBezierTo(size.width * 0.7, size.height, size.width * 0.9, size.height - 100);
    path.lineTo(size.width, size.height - 100);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}