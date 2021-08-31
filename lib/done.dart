import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Done extends StatefulWidget {
  const Done({Key? key}) : super(key: key);

  @override
  _DoneState createState() => _DoneState();
}

class _DoneState extends State<Done> {
  var _current = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = new PageController();
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

    List<File> files = [for (var i = 0; i < 6; i++) file];

    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Color.fromRGBO(35, 35, 54, 1),
      body: Column(
        children: [
          SizedBox(height: mediaQuery.size.height * .1),
          Container(
            height: 420,
            width: 300,
            child: PageView(
              controller: _controller,
              onPageChanged: (i) {
                setState(() {
                  _current = i;
                });
              },
              children: [
                for (var i = 0; i < files.length; i++)
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.file(
                      files[i],
                      fit: BoxFit.cover,
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (var i = 0; i < files.length; i++)
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Container(
                        width: 9,
                        height: 9,
                        // margin: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(176, 105, 255, 1)),
                      ),
                      Container(
                        width: 7,
                        height: 7,
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: i == _current
                              ? Color.fromRGBO(176, 105, 255, 1)
                              : Color.fromRGBO(35, 35, 54, 1),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
          Container(
            width: mediaQuery.size.width * .7,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Images001.jpg',
                  style: GoogleFonts.openSans(
                    color: Color.fromRGBO(135, 135, 135, 1),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      files.removeAt(_current);
                    });
                  },
                  icon: Icon(
                    Icons.delete,
                    color: Colors.blueGrey,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 30),
          Container(
            width: 270,
            child: ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(
                      color: Color.fromRGBO(176, 105, 255, 1),
                    ),
                  ),
                ),
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.transparent),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'Upload More',
                style: GoogleFonts.openSans(fontSize: 18),
              ),
            ),
          ),
          Container(
            width: 270,
            child: ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.purple)),
                ),
                backgroundColor: MaterialStateProperty.all<Color>(
                  Color.fromRGBO(176, 105, 255, 1),
                ),
              ),
              onPressed: () {
                Navigator.of(context)
                    .pushNamedAndRemoveUntil('/verify', (route) => false);
              },
              child: Text(
                'Submit',
                style: GoogleFonts.openSans(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
