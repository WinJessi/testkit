import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
              onPressed: () => Navigator.pushNamed(
                context,
                '/done',
                arguments: file,
              ),
              icon: Icon(Icons.done),
            ),
          )
        ],
        title: Text('Edit Photo', style: TextStyle(color: Colors.black)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Transform.rotate(
            angle: _degree * 0.0174533,
            child: Container(
              width: double.infinity,
              color: Colors.black,
              child: Image.file(file),
            ),
          ),
          Spacer(),
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
                          var max = scrollNotification.metrics.maxScrollExtent;

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
              ))
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        height: 90,
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
            SizedBox(
              width: 10,
            ),
            Container(
              height: 50,
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
                        color: Colors.orange, fontSize: 13),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
