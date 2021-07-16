import 'package:camera_deep_ar/camera_deep_ar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const apikey =
    '6a30540d95cde9310751ab8efbdbaa43fe86777197bd608a83a04b61edf06c210b93ebc0aaecc49c';
// YOUR API

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  CameraDeepArController cameraDeepArController;
  int effectCount = 0;
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: Scaffold(
        body: Stack(
          children: [
            CameraDeepAr(
                onCameraReady: (isReady) {
                  setState(() {});
                },
                onImageCaptured: (path) {
                  setState(() {});
                },
                onVideoRecorded: (path) {
                  setState(() {});
                },
                androidLicenceKey: apikey,
                iosLicenceKey: apikey,
                cameraDeepArCallback: (c) async {
                  cameraDeepArController = c;
                  setState(() {});
                }),
          ],
        ),
        floatingActionButton: IconButton(
          icon: Icon(Icons.navigate_next_rounded),
          onPressed: () => {
            cameraDeepArController.changeMask(effectCount),
            if (effectCount == 7) {effectCount = 0},
            effectCount++
          },
        ),
      ),
    );
  }
}
