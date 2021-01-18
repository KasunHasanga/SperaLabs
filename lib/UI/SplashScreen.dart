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
        backgroundColor: Color.fromARGB(255, 255, 246, 247),
        //242, 222, 220
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  scale: 1.5,
                  alignment: Alignment.bottomLeft,
                  fit: BoxFit.scaleDown,
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
                      style: TextStyle(color: Colors.black54, fontSize: 40),
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
                SizedBox(height: 20,),
                RaisedButton(

                  padding: EdgeInsets.symmetric(horizontal: 35,vertical: 15),
                  splashColor: Colors.white70,
                  color: Colors.white,
                  onPressed: () {
                    print(
                      'Press Start Reading Button',
                    );
                  },
                  child: Text(
                    "start reading",
                    style: TextStyle(fontSize: 20, letterSpacing: 2),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(26)),
                )
              ],
            ),
          ),
        ));
  }
}
