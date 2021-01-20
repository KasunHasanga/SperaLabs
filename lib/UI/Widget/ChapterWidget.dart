import 'package:flutter/material.dart';

class ChapterWidget extends StatefulWidget {
  final String chapter;
  final String quotes;
  ChapterWidget({Key key,@required this.chapter,@required this.quotes}):super(key:key);
  @override
  _ChapterWidgetState createState() => _ChapterWidgetState();
}

class _ChapterWidgetState extends State<ChapterWidget> {

String name='Kasun';


  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        elevation: 15,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: '${widget.chapter} \n',
                          style: TextStyle(color: Colors.black),
                        ),

                        TextSpan(
                          text: '${widget.quotes}',
                          style: TextStyle(color: Colors.black),
                        ),
                      ])),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
              Icon(Icons.navigate_next_outlined)
            ],
          ),
        ),
      ),
    );
  }
}
