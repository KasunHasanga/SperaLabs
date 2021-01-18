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
        backgroundColor: Color.fromARGB(255, 242, 222, 220),
        //242, 222, 220
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  alignment: Alignment.bottomLeft,
                  fit: BoxFit.fitWidth,
                  image: AssetImage(
                    'images/brownleaf.png',
                  ))),
          child: CustomPaint(
            size: MediaQuery.of(context).size,
            painter: CurvePainter(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'flamin',
                      style: TextStyle(color: Colors.black54, fontSize: 40,
                     ),
                    ),
                    Text(
                      'go.',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 40,
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
                RaisedButton(

                  color: Colors.white,
                  onPressed: () {
                    print(
                      'Press Start Reading Button',
                    );
                  },
                  child: Text(
                    "Start Reading",
                    style: TextStyle(fontSize: 20,
                    letterSpacing: 2),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18)),
                )
              ],
            ),
          ),
        ));
  }
}
