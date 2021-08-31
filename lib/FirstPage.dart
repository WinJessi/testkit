import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Entry extends StatelessWidget {
  const Entry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      backgroundColor: Color.fromRGBO(35, 35, 54, 1),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/upload'),
              child: Align(
                alignment: Alignment(.0, 0),
                child: Container(
                  width: 250,
                  height: 300,
                  child: Column(
                    children: [
                      Image.asset('assets/Group.png'),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Tap to Upload',
                        style: GoogleFonts.openSans(
                          fontWeight: FontWeight.w300,
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              width: 340,
              bottom: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'We Accept Only:',
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w300,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                  Text(
                    'Official document from the educator or school.',
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w300,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "JPEG, PDF and PNG files Only. File size shouldn’t exceed" +
                        " 10MB. Maximum 6 Files.",
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w300,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
