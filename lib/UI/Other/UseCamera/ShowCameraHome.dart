import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class ShowCameraHome extends StatefulWidget {
  @override
  _ShowCameraHomeState createState() => _ShowCameraHomeState();
}

class _ShowCameraHomeState extends State<ShowCameraHome> {
  File _image;
  final picker = ImagePicker();
  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.camera_alt_rounded),
            SizedBox(width: 15,),
            Text("Cheese"),
          ],
        ),

      ),
      body: Container(

        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            Container(
              padding: EdgeInsets.all(15),
              child: _image == null
                  ? Image.asset(
                'images/newThings_Others/sayChese.png',
                width: double.infinity,
              )
                  : Image.file(_image),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getImage,
        tooltip: 'Pick Image',
        child: Icon(Icons.add_a_photo),
      ),
    );

  }
}
