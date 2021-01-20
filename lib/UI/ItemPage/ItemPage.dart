import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:spera_lab_first_task/UI/Widget/ChapterWidget.dart';

class ItemPage extends StatefulWidget {
  @override
  _ItemPageState createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 246, 247),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    width: double.infinity,
                    height: 300,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/wallpapers/wall.jpg'),
                          fit: BoxFit.cover,
                          colorFilter: new ColorFilter.mode(
                              Colors.black.withOpacity(0.4), BlendMode.dstATop),
                          alignment: Alignment.topCenter),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: 'Crushing &\n',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 30)),
                            TextSpan(
                                text: 'Influence',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w600)),
                          ])),
                          Row(
                            children: [
                              Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.35,
                                  child: Text(
                                    'Over 30 million copies have been sold worldwide & '
                                    'the best-selling books of all time. ',
                                    style: TextStyle(color: Colors.black),
                                  )),
                              Column(
                                children: [
                                  Icon(Icons.favorite_outline_outlined),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Card(
                                    margin: EdgeInsets.all(0),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                      Radius.elliptical(30, 50),
                                    )),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 20,
                                        ),
                                        SizedBox(
                                          width: 30,
                                          height: 5,
                                        ),
                                        Text("4.9"),
                                        SizedBox(
                                          height: 5,
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          RaisedButton(
                            padding: EdgeInsets.symmetric(horizontal: 40),
                            onPressed: () {
                              print('press Read');
                            },
                            child: Text('Read'),
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(26)),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 30,
                    bottom: 80,
                    child: Image.asset(
                      'images/books/Book.png',
                      width: 120,
                    ),
                  ),
                ],
              ),

              ChapterWidget(chapter: 'Chapter 01 : Money',quotes: 'Life is about change',),
              ChapterWidget(chapter: 'Chapter 02 : Power',quotes: 'Everything loves power',),
              ChapterWidget(chapter: 'Chapter 03 : Influence',quotes: 'Work smart and Hard',),
              ChapterWidget(chapter: 'Chapter 04 : Money',quotes: 'Winning is what matter',),

              SizedBox(
                height: 0,
              ),

              ///You might also Like
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: 'You might also ',
                        style: TextStyle(fontSize: 25, color: Colors.black87)),
                    TextSpan(
                        text: 'like..',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87)),
                  ])),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Stack(
                alignment: Alignment.bottomRight,
                fit: StackFit.passthrough,
                overflow: Overflow.visible,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(20, 20, 0, 25),
                      width: double.infinity,
                      //height: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Text(
                              'how to win friends and influence people',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 20),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('gary Vanchuck'),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Card(
                                margin: EdgeInsets.fromLTRB(5, 10, 0, 0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                  Radius.elliptical(30, 50),
                                )),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 20,
                                    ),
                                    SizedBox(
                                      width: 30,
                                      height: 5,
                                    ),
                                    Text("4.9"),
                                    SizedBox(
                                      height: 5,
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  child: Text(
                                      'Over 30 million copies have been sold worldwide & the best-selling books of all time. ')),
                            ],
                          ),
                         Container(
                           margin: EdgeInsets.only(left: 80),
                           child:  FlatButton(onPressed: (){},child: Text('Read'),
                             shape: RoundedRectangleBorder (
                                 borderRadius: BorderRadius.circular(10)
                             ),),
                         )
                        ],
                      ),
                    ),
                    color: Colors.white70,
                  ),
                  Positioned(
                    bottom: 80,
                    child: Image.asset(
                      'images/books/Book.png',
                      width: 120,
                    ),
                  ),
                 
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
