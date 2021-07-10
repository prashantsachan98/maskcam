import 'package:camera_deep_ar/camera_deep_ar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const apikey =
    "25bf42dcddd58cf3a8c5912e7bb8d4a1e6cdbe31163ac12952d74f302e9437f0f2176c6dbec05954";

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
