import 'package:flutter/material.dart';
import 'package:spera_lab_first_task/UI/ItemPage/ItemPage.dart';

class BookWidget extends StatefulWidget {
  final String bookImageurl;
  final String bookName;
  final String bookAuthor;
  final double rating;

  BookWidget({Key key,@required this.bookAuthor,@required this.bookImageurl,@required  this.bookName,@required  this.rating}):super(key:key);
  @override
  _BookWidgetState createState() => _BookWidgetState();
}

class _BookWidgetState extends State<BookWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      children: [
        Container(
          width: 220,
          height: 200,
          child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 150,
                      ),
                      Column(
                        mainAxisAlignment:
                        MainAxisAlignment.start,
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Icon(
                            Icons.favorite_outline_outlined,
                            color: Colors.black87,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Text(widget.rating.toString())
                        ],
                      ),
                    ],
                  ),
                ],
              )),
        ),
        Positioned(
            right: 0,
            left: 0,
            bottom: 0,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
              children: [
                FlatButton(
                    onPressed: (){}, child: Text('Details')),
                RaisedButton(
                  textColor: Colors.white70,
                  color: Colors.black54,
                  onPressed:(){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>ItemPage()));
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
                )
              ],
            )),
        Positioned(
          bottom: 100,

          left: 20,
          child: Image.asset(
            widget.bookImageurl,
            width: 100,
          ),
        ),
        Positioned(
            left: 20,
            bottom: 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.bookName,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(widget.bookAuthor),
              ],
            )),
      ],
    );
  }
}
