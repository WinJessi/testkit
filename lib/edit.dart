import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'model/app.dart';

class Edited extends StatefulWidget {
  const Edited({Key? key}) : super(key: key);

  @override
  _EditedState createState() => _EditedState();
}

class _EditedState extends State<Edited> {
  var _degree = 0;
  var _zoom = 0;
  late ScrollController _controller;

  @override
  void initState() {
    _controller = new ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var file = ModalRoute.of(context)!.settings.arguments as File;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(Icons.close),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {
                Provider.of<AppState>(context, listen: false).newImage = file;
                Navigator.of(context).pushNamed('/done');
              },
              icon: Icon(Icons.done),
            ),
          )
        ],
        title: Text('Edit Photo', style: TextStyle(color: Colors.black)),
      ),
      body: MediaQuery.of(context).orientation == Orientation.portrait
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Transform.rotate(
                    angle: _degree * 0.0174533,
                    child: Container(
                      width: double.infinity,
                      height: double.maxFinite,
                      color: Colors.black,
                      child: InteractiveViewer(
                        panEnabled: true,
                        child: Image.file(
                          file,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  height: 85,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                          height: 60,
                          child: NotificationListener<ScrollNotification>(
                            onNotification: (scrollNotification) {
                              var x = scrollNotification.metrics.pixels;
                              var max =
                                  scrollNotification.metrics.maxScrollExtent;

                              var perc = ((x / max) * 100);

                              setState(() {
                                _zoom = perc.round();
                              });
                              return true;
                            },
                            child: ListView.builder(
                              itemCount: 100,
                              scrollDirection: Axis.horizontal,
                              controller: _controller,
                              physics: ClampingScrollPhysics(),
                              itemBuilder: (_, i) => Container(
                                width: 3,
                                height: 80,
                                margin: EdgeInsets.symmetric(
                                  horizontal: 5,
                                  vertical: 15,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(3),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Text(
                                '$_zoom%',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: 5,
                                height: 90,
                                margin: EdgeInsets.symmetric(vertical: 10),
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(3),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          : Row(
              children: [
                Container(
                  color: Colors.white,
                  height: double.maxFinite,
                  width: 85,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                          height: double.maxFinite,
                          child: NotificationListener<ScrollNotification>(
                            onNotification: (scrollNotification) {
                              var x = scrollNotification.metrics.pixels;
                              var max =
                                  scrollNotification.metrics.maxScrollExtent;

                              var perc = ((x / max) * 100);

                              setState(() {
                                _zoom = perc.round();
                              });
                              return true;
                            },
                            child: ListView.builder(
                              itemCount: 100,
                              scrollDirection: Axis.vertical,
                              controller: _controller,
                              physics: ClampingScrollPhysics(),
                              itemBuilder: (_, i) => Container(
                                width: 80,
                                height: 3,
                                margin: EdgeInsets.only(
                                  top: 2.5,
                                  bottom: 5,
                                  right: 50,
                                  left: 2.5,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(3),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                width: 90,
                                height: 5,
                                margin: EdgeInsets.symmetric(vertical: 10),
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(3),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Text(
                                '$_zoom%',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Transform.rotate(
                    angle: _degree * 0.0174533,
                    child: Container(
                      width: double.infinity,
                      height: double.maxFinite,
                      color: Colors.black,
                      child: Image.file(
                        file,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ],
            ),
      bottomNavigationBar: Container(
        color: Colors.black,
        child: SizedBox(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    _degree += 90;
                  });
                },
                icon: Icon(
                  Icons.replay_outlined,
                  color: Colors.blueGrey,
                  size: 30,
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Icon(
                      Icons.filter_center_focus,
                      color: Colors.orange,
                      size: 30,
                    ),
                    Text(
                      'Scale',
                      style: GoogleFonts.openSans(
                        color: Colors.orange,
                        fontSize: 13,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
