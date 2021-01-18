import 'package:flutter/material.dart';

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {




///Path 2 top left
    ///COlor
    Paint paint2 = new Paint()
    ..color = Color.fromARGB(255,252, 211, 197)
    ..style = PaintingStyle.fill
    ..strokeWidth = 1;
    ///drawing Path
    var path2 = Path();
    path2.moveTo(0, size.height * 0.25);
    path2.quadraticBezierTo(
        size.width / 4, size.height/4,0, size.height*0.6);
    path2.lineTo(0, size.height*0.6);
     path2.close();
    canvas.drawPath(path2, paint2);


///Path 1 top right
    Paint paint1 = new Paint()
    ..color = Color.fromARGB(255,252, 211, 197)
    ..style = PaintingStyle.fill
    ..strokeWidth = 1;


    Path path1 = Path();
    path1.moveTo(size.width*0.4,0);
    path1.quadraticBezierTo(size.width*0.71,size.height*0.24,size.width*0.81,size.height*0.37);
    path1.quadraticBezierTo(size.width*0.91,size.height*0.47,size.width,size.height*0.45);
    path1.lineTo(size.width,0);
    path1.lineTo(size.width*0.71,0);
    path1.close();

    canvas.drawPath(path1, paint1);






    /// Path 3 Right Bottom
    Paint paint_0 = new Paint()
    ..color = Color.fromARGB(150, 180, 175, 174)
    ..style = PaintingStyle.fill
    ..strokeWidth = 1;


    Path path3 = Path();
    path3.moveTo(size.width*0.67,size.height);
    path3.quadraticBezierTo(size.width*0.66,size.height*0.86,size.width*0.73,size.height*0.82);
    path3.cubicTo(size.width*0.84,size.height*0.77,size.width*0.90,size.height*0.63,size.width*0.83,size.height*0.78);
    path3.cubicTo(size.width*0.77,size.height*0.86,size.width*0.78,size.height*0.68,size.width*0.87,size.height*0.60);
    path3.quadraticBezierTo(size.width*0.94,size.height*0.55,size.width,size.height*0.56);
    path3.lineTo(size.width,size.height);

    canvas.drawPath(path3, paint_0);




  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}