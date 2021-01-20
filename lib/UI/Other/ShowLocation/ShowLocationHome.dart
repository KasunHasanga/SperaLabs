

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:url_launcher/url_launcher.dart';


class ShowLocation extends StatefulWidget {
  @override
  _ShowLocationState createState() => _ShowLocationState();
}

class _ShowLocationState extends State<ShowLocation> {


///Url Launcher to open map
  void _launchMapsUrl(String location) async {
    final url = 'https://www.google.com/maps/search/?api=1&query=$location';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  var locationMessage="";

  void getCurrentLocation() async{
    var position =await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    var lastPosition =await Geolocator().getLastKnownPosition();

   // print(lastPosition);

    setState(() {
      locationMessage="${position.latitude}  , ${position.longitude}";
    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.location_on),
            Text('My Location'),
          ],
        ),

      ),
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(locationMessage),
            FlatButton(
              color: Colors.blueAccent,
              child: Text("Get location"),
              onPressed: () {
                getCurrentLocation();
                print(locationMessage);
              },
            ),

            locationMessage.isNotEmpty?IconButton(
              icon: Icon(Icons.directions),
              color: Colors.blueAccent,
              onPressed: (){
                setState(() {
                  _launchMapsUrl( locationMessage);

                });
              },
            ):Text(''),
          ],
        ),
      ),
    );
  }
}
