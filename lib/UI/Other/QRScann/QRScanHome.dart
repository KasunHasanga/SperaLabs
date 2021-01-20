import 'package:flutter/material.dart';
class QRScanHome extends StatefulWidget {
  @override
  _QRScanHomeState createState() => _QRScanHomeState();
}

class _QRScanHomeState extends State<QRScanHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Scanner'),
      ),
    );
  }
}
