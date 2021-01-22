import 'dart:async';


import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:url_launcher/url_launcher.dart';

class ShowLocation extends StatefulWidget {
  @override
  _ShowLocationState createState() => _ShowLocationState();
}

class _ShowLocationState extends State<ShowLocation> {
  ///Google Maps
  Completer<GoogleMapController> _controller = Completer();

   LatLng _center =  LatLng(45.521563, -122.677433);


  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);

  }


  ///Url Launcher to open map
  // void _launchMapsUrl(String location) async {
  //   final url = 'https://www.google.com/maps/search/?api=1&query=$location';
  //   if (await canLaunch(url)) {
  //     await launch(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }

  var locationMessage = "";


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

        color: Colors.white12,
        child: GoogleMap(
          zoomControlsEnabled: true,
          onMapCreated: _onMapCreated,
          myLocationEnabled: true,
          initialCameraPosition: CameraPosition(

            target: _center,
            zoom: 11.0,

          ),

        ),

      ),
    //   floatingActionButton: Row(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       FloatingActionButton(
    //
    //           onPressed: () {
    //            _myLocation();
    //           },
    //           child: Icon(Icons.my_location_rounded),
    // ),
    //     ],
    //   ),

    );
  }

  ///get Geolocation and return
  Future<void> _myLocation() async {
    var lat,long;
    final GoogleMapController controller = await _controller.future;

    ///Get Current Position
    var position = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);

    ///Get Last Known Position
    //var lastPosition = await Geolocator().getLastKnownPosition();
    // print(lastPosition);

    setState(() {
      // locationMessage = "${position.latitude}  , ${position.longitude}";

      lat=position.latitude;
      long=position.longitude;
    });

    ///Go to My Location
    CameraPosition _toMyLocation = CameraPosition(
        bearing: 192.8334901395799,
        target: LatLng(lat, long),
        tilt: 0.0,
        zoom: 17.0);

    ///Calling Function from FAB
    controller.animateCamera(CameraUpdate.newCameraPosition(_toMyLocation));
  }
}



///1.Get My Location
///2.wait till get location
///3.updateNew Location
///4.set New Camer Postition