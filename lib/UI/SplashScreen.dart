import 'package:flutter/material.dart';

import 'CurvePainter.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: CustomPaint(
        size: MediaQuery.of(context).size,
        painter: CurvePainter(),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'flamin',
                  style: TextStyle(color: Colors.black54, fontSize: 24),
                ),
                Text(
                  'go.',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 24,
                      fontWeight: FontWeight.w800),
                ),
              ],
            ),
            RaisedButton(onPressed: () {
              print('Press Start Reading Button');
            },
              child: Text("Start Reading"),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18)          ),)
          ],
        ),
      )



    );
  }
}
