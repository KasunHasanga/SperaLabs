import 'package:flutter/material.dart';
class CurvePainterHome extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint_0 = new Paint()
      ..color = Color.fromARGB(255,252, 211, 197)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;


    Path path_0 = Path();
    path_0.moveTo(size.width*0.67,0);
    path_0.quadraticBezierTo(size.width*0.69,size.height*0.07,size.width*0.77,size.height*0.12);
    path_0.quadraticBezierTo(size.width*0.88,size.height*0.18,size.width,size.height*0.20);
    path_0.lineTo(size.width,0);
    path_0.lineTo(size.width*0.67,0);
    path_0.close();

    canvas.drawPath(path_0, paint_0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}
