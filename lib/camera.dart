import 'package:camera_camera/camera_camera.dart';
import 'package:flutter/material.dart';

class Uploaded extends StatelessWidget {
  const Uploaded({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CameraCamera(
        resolutionPreset: ResolutionPreset.medium,
        onFile: (file) =>
            Navigator.of(context).pushNamed('/edited', arguments: file),
      ),
    );
  }
}
