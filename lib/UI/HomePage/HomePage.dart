import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:spera_lab_first_task/UI/ItemPage/ItemPage.dart';
import 'package:spera_lab_first_task/UI/Widget/BooksWidget.dart';

import 'CurvePainterHome.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 246, 247),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 30),
        child: Container(
          width: double.infinity,
          child: CustomPaint(
            painter: CurvePainterHome(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 120,
                ),

                ///Main Topic
                Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: 'What Are you \nreading ',
                            style:
                                TextStyle(fontSize: 30, color: Colors.black87)),
                        TextSpan(
                            text: 'today?',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87))
                      ]),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),

                ///Horizontal Scrollable Books Set
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      BookWidget(
                          bookAuthor: 'gary Vanchuck',
                          bookImageurl: 'images/books/Book.png',
                          bookName: 'Crushing & Influence',
                          rating: 4.9),
                      SizedBox(
                        width: 15,
                      ),
                      BookWidget(
                          bookAuthor: 'Anna Karenina',
                          bookImageurl: 'images/books/Book.jpg',
                          bookName: 'To Kill a Mockingbird',
                          rating: 3.2),
                      SizedBox(
                        width: 15,
                      ),
                      BookWidget(
                          bookAuthor: 'Miguel de Cervantes',
                          bookImageurl: 'images/books/Book.jpg',
                          bookName: 'Don Quixote',
                          rating: 2.9),
                      SizedBox(
                        width: 15,
                      ),
                      BookWidget(
                          bookAuthor: 'gary Vanchuck',
                          bookImageurl: 'images/books/Book.png',
                          bookName: 'Crushing & Influence',
                          rating: 4.9),
                    ],
                  ),
                ),

                ///Best Of the Day
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
                          text: 'Best Of the ',
                          style:
                              TextStyle(fontSize: 25, color: Colors.black87)),
                      TextSpan(
                          text: 'day',
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
                    Positioned(
                        right: 0,
                        left: null,
                        bottom: 0,
                        child: RaisedButton(
                          textColor: Colors.white70,
                          color: Colors.black54,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ItemPage()));
                            print(
                              'Press Start Read Button',
                            );
                          },
                          child: Text(
                            'Read',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(25),
                                topLeft: Radius.circular(25)),
                          ),
                        )),
                  ],
                ),

                ///Continue Reading
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
                          text: 'Continue ',
                          style:
                              TextStyle(fontSize: 25, color: Colors.black87)),
                      TextSpan(
                          text: 'reading....',
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
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Container(
                        margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
                        width: double.infinity,
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Crushing & Influence',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 23),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text('gary Vanchuck'),
                              ],
                            ),
                            PreferredSize(
                              preferredSize: Size.fromHeight(4.0),
                              child: LinearProgressIndicator(
                                backgroundColor: Colors.red.withOpacity(0.3),
                                valueColor: new AlwaysStoppedAnimation<Color>(
                                    Colors.brown),
                                value: 0.65,
                              ),
                            ),
                          ],
                        ),
                      ),
                      color: Colors.white70,
                    ),
                    Positioned(
                      bottom: 30,
                      child: Image.asset(
                        'images/books/Book.png',
                        width: 80,
                      ),
                    ),
                    // Positioned(
                    //
                    //     child: MyLinearProgressIndicator(
                    //   value: 3,))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
