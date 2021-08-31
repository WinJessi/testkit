import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testkit/FirstPage.dart';
import 'package:testkit/camera.dart';
import 'package:testkit/done.dart';
import 'package:testkit/edit.dart';
import 'package:testkit/verification.dart';

late List<CameraDescription> camera;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Entry(),
      routes: {
        '/upload': (context) => Uploaded(),
        '/edited': (context) => Edited(),
        '/done': (context) => Done(),
        '/verify': (context) => Verify()
      },
    );
  }
}
