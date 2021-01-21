import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:url_launcher/url_launcher.dart';
class QRScanHome extends StatefulWidget {
  @override
  _QRScanHomeState createState() => _QRScanHomeState();
}

class _QRScanHomeState extends State<QRScanHome> {
  String _scanBarcode ='';
  ///Url Launcher to open map
  void _launchMapsUrl(String location) async {
    final url = '$_scanBarcode';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  startBarcodeScanStream() async {
    FlutterBarcodeScanner.getBarcodeStreamReceiver(
        "#ff6666", "Cancel", true, ScanMode.BARCODE)
        .listen((barcode) => print(barcode));
  }

  Future<void> scanQR() async {
    String barcodeScanRes;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          "#ff6666", "Cancel", true, ScanMode.QR);
      print(barcodeScanRes);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _scanBarcode = barcodeScanRes;
      print(barcodeScanRes);
    });
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> scanBarcodeNormal() async {
    String barcodeScanRes;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          "#ff6666", "Cancel", true, ScanMode.BARCODE);
      print(barcodeScanRes);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _scanBarcode = barcodeScanRes;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Scanner'),
      ),body:Builder(builder: (BuildContext context) {
      return Container(
        padding: EdgeInsets.all(20),
        color: Colors.white,
          alignment: Alignment.center,
          child: Flex(
              direction: Axis.vertical,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: RaisedButton(

                    color: Colors.blueAccent,
                      onPressed: () => scanBarcodeNormal(),
                      child: Text("Start barcode scan")),
                ),
                SizedBox(height: 50,),
                // RaisedButton(
                //     onPressed: () => scanQR(),
                //     child: Text("Start QR scan")),
                // RaisedButton(
                //     onPressed: () => startBarcodeScanStream(),
                //     child: Text("Start barcode scan stream")),
                _scanBarcode.isNotEmpty?Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Search Result:',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),),
                    GestureDetector(
                      onTap:(){
                        setState(() {
                          _launchMapsUrl( _scanBarcode);

                        });
                      },
                      child: Text(_scanBarcode,style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w600,decoration: TextDecoration.underline),),
                    ),
                  ],
                ):Text(''),


                // _scanBarcode.isNotEmpty?RaisedButton(
                //   child: Row(
                //     children: [
                //       Icon(Icons.zoom_in),
                //       Text('launch')
                //     ],
                //   ),
                //   color: Colors.blueAccent,
                //   onPressed: (){
                //     setState(() {
                //       _launchMapsUrl( _scanBarcode);
                //
                //     });
                //   },
                // ):Text(''),

              ]));
    }));
  }
}
