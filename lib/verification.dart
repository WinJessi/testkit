import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Verify extends StatefulWidget {
  const Verify({Key? key}) : super(key: key);

  @override
  _VerifyState createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero).then((value) => firstDialog());
  }

  Future<void> firstDialog() async {
    return showDialog<void>(
      context: context,
      builder: (context) => Dialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          height: 500,
          width: 600,
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('17/02/2020'),
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(Icons.cancel),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      // child: Image.asset('assets/display_picture.png'),
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/display_picture.png',
                          ),
                        ),
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(90),
                            bottomRight: Radius.circular(90),
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(90)),
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 150,
                      child: Text(
                        'Victor McComrick has' +
                            ' requested information access 18:28',
                        overflow: TextOverflow.clip,
                        style: GoogleFonts.openSans(fontSize: 15),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Reason for request: Authentification.' +
                      ' Accept to disclose the below information.',
                  style: GoogleFonts.openSans(fontSize: 13),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 70,
                        child: Column(
                          children: [
                            Image.asset('assets/job1.png'),
                            Text(
                              'Job',
                              style: GoogleFonts.openSans(
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 70,
                        child: Column(
                          children: [
                            Image.asset('assets/salary1.png'),
                            Text(
                              'Salary',
                              style: GoogleFonts.openSans(
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 70,
                        child: Column(
                          children: [
                            Image.asset('assets/education1.png'),
                            Text(
                              'Education',
                              style: GoogleFonts.openSans(
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.info_outline, size: 18),
                      Container(
                        width: 200,
                        child: Text(
                          'This Verification is not sponsored.',
                          style: GoogleFonts.openSans(fontSize: 12),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  width: 170,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(
                              color: Color.fromRGBO(176, 105, 255, 1),
                            ),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromRGBO(176, 105, 255, 1),
                        )),
                    onPressed: () {
                      Navigator.of(context).pop();
                      secondDilog();
                    },
                    child: Text(
                      'Give Access',
                      style: GoogleFonts.openSans(fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  width: 170,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(
                              color: Color.fromRGBO(176, 105, 255, 1),
                            ),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.transparent,
                        )),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Decline',
                      style: GoogleFonts.openSans(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> secondDilog() async {
    return showDialog(
      context: context,
      builder: (context) => Dialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          height: 500,
          width: 600,
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('17/02/2020'),
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(Icons.cancel),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      // child: Image.asset('assets/display_picture.png'),
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/display_picture.png',
                          ),
                        ),
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(90),
                            bottomRight: Radius.circular(90),
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(90)),
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 150,
                      child: Text(
                        'Victor McComrick has' +
                            ' requested information access 18:28',
                        overflow: TextOverflow.clip,
                        style: GoogleFonts.openSans(fontSize: 15),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Reason for request: Authentification.' +
                      ' Accept to disclose the below information.',
                  style: GoogleFonts.openSans(fontSize: 13),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 70,
                        child: Column(
                          children: [
                            Image.asset('assets/job1.png'),
                            Text(
                              'Job',
                              style: GoogleFonts.openSans(
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 70,
                        child: Column(
                          children: [
                            Image.asset('assets/salary1.png'),
                            Text(
                              'Salary',
                              style: GoogleFonts.openSans(
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 70,
                        child: Column(
                          children: [
                            Image.asset('assets/education1.png'),
                            Text(
                              'Education',
                              style: GoogleFonts.openSans(
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  width: 220,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.info_outline, size: 18),
                      Container(
                        width: 200,
                        child: Text(
                          'This Verification is sponsored by Victor.' +
                              'Expire by 22/7/2021.',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.openSans(
                            fontSize: 12,
                          ),
                          overflow: TextOverflow.clip,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  width: 170,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(
                              color: Color.fromRGBO(176, 105, 255, 1),
                            ),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromRGBO(176, 105, 255, 1),
                        )),
                    onPressed: () {
                      Navigator.of(context).pop();
                      thirdDialog();
                    },
                    child: Text(
                      'Give Access',
                      style: GoogleFonts.openSans(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future thirdDialog() async {
    return showDialog(
      context: context,
      builder: (context) => Dialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          height: 500,
          width: 600,
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('17/02/2020'),
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(Icons.cancel),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      // child: Image.asset('assets/display_picture.png'),
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/display_picture.png',
                          ),
                        ),
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(90),
                            bottomRight: Radius.circular(90),
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(90)),
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 150,
                      child: Text(
                        'Victor McComrick has' +
                            ' requested information access 18:28',
                        overflow: TextOverflow.clip,
                        style: GoogleFonts.openSans(fontSize: 15),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Reason for request: Authentification.' +
                      ' Accept to disclose the below information.',
                  style: GoogleFonts.openSans(fontSize: 13),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  padding: EdgeInsets.only(left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Image.asset('assets/job.png'),
                            Text(
                              'Job',
                              style: GoogleFonts.openSans(
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Image.asset('assets/salary.png'),
                            Text(
                              'Salary',
                              style: GoogleFonts.openSans(
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Image.asset('assets/education1.png'),
                            Text(
                              'Education',
                              style: GoogleFonts.openSans(
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.info_outline, size: 18),
                      Container(
                        width: 200,
                        child: Text(
                          'This Verification is sponsored by Victor.' +
                              'Expire by 22/7/2021.',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.openSans(
                            fontSize: 12,
                          ),
                          overflow: TextOverflow.clip,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  width: 230,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(
                              color: Color.fromRGBO(176, 105, 255, 1),
                            ),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromRGBO(176, 105, 255, 1),
                        )),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      'Validation & Give Access',
                      style: GoogleFonts.openSans(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(35, 35, 38, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(35, 35, 38, 1),
      ),
      body: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Verification Request',
                style: GoogleFonts.openSans(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: 270,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      // child: Image.asset('assets/display_picture.png'),
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/display_picture.png',
                          ),
                        ),
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(90),
                            bottomRight: Radius.circular(90),
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(90)),
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 150,
                      child: Text(
                        'Victor McComrick has' +
                            ' requested information access',
                        overflow: TextOverflow.clip,
                        style: GoogleFonts.openSans(
                            fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Item',
                      style: GoogleFonts.openSans(
                          fontSize: 12, color: Colors.white),
                    ),
                    Text(
                      'Status',
                      style: GoogleFonts.openSans(
                          fontSize: 12, color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 300,
                child: ListView(
                  children: [
                    Block(
                        title: 'Job',
                        heading: 'Pharmacetical Science Specialist',
                        company: 'Hewlett Packard International Corporation' +
                            ' of Industrial Clean Energy',
                        date: '01 Feb 2018 - 01 Feb 2020',
                        docType: 'Company Letter'),
                    Block(
                        title: 'References',
                        heading: 'Nathan Schmid',
                        company: 'Hewlett Packard International' +
                            ' Corporation of industrial Clean Energy',
                        date: 'Issued by 01 Feb 2020',
                        docType: 'Recommedation'),
                    Block(
                        title: 'Salary',
                        heading: '\$10,000 - \$50,000',
                        company: 'Softkodes',
                        date: '20-1-2021',
                        docType: 'Check'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 100,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 20,
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: 290,
              child: Text(
                'The item will be released immediately' +
                    ' to Victor once it’s verified.',
                textAlign: TextAlign.center,
                style: GoogleFonts.openSans(
                  fontSize: 12,
                  color: Color.fromRGBO(225, 225, 225, 1),
                ),
                overflow: TextOverflow.clip,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Block extends StatefulWidget {
  Block(
      {Key? key,
      required this.title,
      required this.heading,
      required this.company,
      required this.date,
      required this.docType})
      : super(key: key);
  String title;
  String heading;
  String company;
  String date;
  String docType;

  @override
  _BlockState createState() => _BlockState();
}

class _BlockState extends State<Block> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 55,
              child: Column(
                children: [
                  Container(
                    child: Image.asset('assets/Failed1.png'),
                  ),
                  Text(
                    widget.title,
                    style:
                        GoogleFonts.openSans(color: Colors.white, fontSize: 10),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 35,
            ),
            Container(
              width: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.heading,
                    // overflow: TextOverflow.clip,
                    style:
                        GoogleFonts.openSans(fontSize: 14, color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.company,
                    style:
                        GoogleFonts.openSans(fontSize: 10, color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.date,
                    style:
                        GoogleFonts.openSans(fontSize: 10, color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.docType,
                    style:
                        GoogleFonts.openSans(fontSize: 10, color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: 80,
              height: 30,
              child: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(
                          color: Color.fromRGBO(225, 103, 103, 1),
                        ),
                      ),
                    ),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.transparent)),
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                child: Text(
                  'Verify Now',
                  style: GoogleFonts.openSans(fontSize: 9, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
