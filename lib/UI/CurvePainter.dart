import 'package:flutter/material.dart';

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {




///Path 2 top left
    ///COlor
    Paint paint2 = new Paint()
    ..color = Color.fromARGB(255, 240, 176, 170)
    ..style = PaintingStyle.fill
    ..strokeWidth = 1;
    ///drawing Path
    var path2 = Path();
    path2.moveTo(0, size.height * 0.25);
    path2.quadraticBezierTo(
        size.width / 4, size.height/4,0, size.height*0.75);
    path2.lineTo(0, size.height*0.75);
     path2.close();
    canvas.drawPath(path2, paint2);


///Path 1 top right
    Paint paint1 = new Paint()
    ..color = Color.fromARGB(255, 240, 176, 170)
    ..style = PaintingStyle.fill
    ..strokeWidth = 1;


    Path path1 = Path();
    path1.moveTo(size.width*0.71,0);
    path1.quadraticBezierTo(size.width*0.71,size.height*0.24,size.width*0.81,size.height*0.37);
    path1.quadraticBezierTo(size.width*0.91,size.height*0.47,size.width,size.height*0.45);
    path1.lineTo(size.width,0);
    path1.lineTo(size.width*0.71,0);
    path1.close();

    canvas.drawPath(path1, paint1);











    Paint paint_0 = new Paint()
    ..color = Color.fromARGB(255, 186, 169, 168)
    ..style = PaintingStyle.fill
    ..strokeWidth = 1;


    Path path_0 = Path();
    path_0.moveTo(size.width*0.91,size.height);
    path_0.quadraticBezierTo(size.width*0.89,size.height*0.83,size.width*0.91,size.height*0.80);
    path_0.quadraticBezierTo(size.width*0.94,size.height*0.78,size.width*0.95,size.height*0.78);
    path_0.quadraticBezierTo(size.width*0.94,size.height*0.68,size.width*0.95,size.height*0.66);
    path_0.cubicTo(size.width*0.99,size.height*0.58,size.width*1.03,size.height*0.56,size.width,size.height*0.70);
    path_0.quadraticBezierTo(size.width*1.00,size.height*0.80,size.width,size.height);

    canvas.drawPath(path_0, paint_0);





    ///Path 3 Green
    ///COlor
    // var paint3 = Paint();
    // paint3.color = Colors.green;
    // paint3.style = PaintingStyle.fill;
    // ///drawing Path
    // var path3 = Path();
    // path3.moveTo(size.width*0.75, size.height);
    // path3.quadraticBezierTo(
    //     size.width *0.875, size.height*0.75,size.width*0.625, size.height*0.625);
    // path3.lineTo(size.width, size.height*0.5);
    //
    // path3.close();
    // canvas.drawPath(path3, paint3);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}