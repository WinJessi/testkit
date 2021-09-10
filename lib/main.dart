import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:redux/redux.dart';
import 'package:testkit/FirstPage.dart';
import 'package:testkit/camera.dart';
import 'package:testkit/done.dart';
import 'package:testkit/edit.dart';
import 'package:testkit/model/app.dart';
import 'package:testkit/verification.dart';

late List<CameraDescription> camera;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(Home());
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // late final Store store;

  @override
  void initState() {
    // store = new Store<AppState>(appReducer(state, action), initialState: new AppState());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: AppState()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Entry(),
        routes: {
          '/upload': (context) => Uploaded(),
          '/edited': (context) => Edited(),
          '/done': (context) => Done(),
          '/verify': (context) => Verify()
        },
      ),
    );
  }
}
