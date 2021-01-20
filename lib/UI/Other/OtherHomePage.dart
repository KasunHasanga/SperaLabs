import 'package:flutter/material.dart';
import 'package:spera_lab_first_task/UI/HomePage/HomePage.dart';
import 'package:spera_lab_first_task/UI/Other/QRScann/QRScanHome.dart';
import 'package:spera_lab_first_task/UI/Other/ShowLocation/ShowLocationHome.dart';
import 'package:spera_lab_first_task/UI/Other/UseCamera/ShowCameraHome.dart';
import 'package:spera_lab_first_task/UI/SplashScreen/CurvePainter.dart';
import 'package:spera_lab_first_task/UI/Widget/CustomButton.dart';



class OtherHomePage extends StatefulWidget {
  @override
  _OtherHomePageState createState() => _OtherHomePageState();
}

class _OtherHomePageState extends State<OtherHomePage> {
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
                      'Explore New ',
                      style: TextStyle(color: Colors.black54, fontSize: 40),
                    ),
                    Text(
                      'Things.',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 40,
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
                SizedBox(height: 20,),

                CustomeRaisedButton(navPage: QRScanHome(), printText: 'BarCodeScanner', text: 'QR code Scan'),
                SizedBox(height: 10,),
                CustomeRaisedButton(navPage: ShowLocation(), printText: 'MyLocation', text: 'My Location'),
                SizedBox(height: 10,),
                CustomeRaisedButton(navPage: ShowCameraHome(), printText: 'BarCodeScanner', text: 'selfie'),

              ],
            ),
          ),
        ));
  }
}
