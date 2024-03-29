import 'package:flutter/material.dart';
import 'package:spera_lab_first_task/UI/HomePage/HomePage.dart';
import 'package:spera_lab_first_task/UI/Other/OtherHomePage.dart';
import 'package:spera_lab_first_task/UI/Widget/CustomButton.dart';

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

                CustomeRaisedButton(text: 'Reading Button',navPage: HomePage(),printText: 'start reading',),
                SizedBox(height: 20,),

                CustomeRaisedButton(text: 'Explore new',navPage: OtherHomePage(),printText: 'Explore page',),

              ],
            ),
          ),
        ));
  }
}
