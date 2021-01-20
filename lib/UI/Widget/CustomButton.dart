import 'package:flutter/material.dart';
import 'package:spera_lab_first_task/UI/HomePage/HomePage.dart';

class CustomeRaisedButton extends StatefulWidget {
  Widget navPage;
  String text;
  String printText;
  CustomeRaisedButton({Key key,@required this.navPage,@required this.printText,@required this.text}):super(key: key);
  @override
  _CustomeRaisedButtonState createState() => _CustomeRaisedButtonState();
}

class _CustomeRaisedButtonState extends State<CustomeRaisedButton> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(

      padding: EdgeInsets.symmetric(horizontal: 35,vertical: 15),
      splashColor: Colors.white70,
      color: Colors.white,
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context)=>widget.navPage));
        print(
          widget.printText,
        );
      },
      child: Text(
        widget.text,
        style: TextStyle(fontSize: 20, letterSpacing: 2),
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(26)),
    );
  }
}
