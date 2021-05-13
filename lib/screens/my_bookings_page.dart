import 'package:bmis_app/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyBookingsPage extends StatefulWidget {
  MyBookingsPage({Key key}) : super(key: key);

  @override
  _MyBookingsPageState createState() => _MyBookingsPageState();
}

class _MyBookingsPageState extends State<MyBookingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar('My Bookings'),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20.0),
              decoration: new BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[100],
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: <Widget>[
                              Text('Ticket #: ',
                                  style: GoogleFonts.poppins(
                                      color: Colors.blue[900],
                                      fontWeight: FontWeight.bold)),
                              Text('A054501'),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text('07-MAR-2021',
                                  style: GoogleFonts.poppins(
                                      color: Colors.blue[900],
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text('Bus: ',
                                  style: GoogleFonts.poppins(
                                      color: Colors.blue[900],
                                      fontWeight: FontWeight.bold)),
                              Text('Ordinary'),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text('Trip: ',
                                  style: GoogleFonts.poppins(
                                      color: Colors.blue[900],
                                      fontWeight: FontWeight.bold)),
                              Text('Dagupan'),
                              Text('-'),
                              Text('Cubao'),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text('Departure Time: ',
                                  style: GoogleFonts.poppins(
                                      color: Colors.blue[900],
                                      fontWeight: FontWeight.bold)),
                              Text('13:00'),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: <Widget>[
                              Text('Price: ',
                                  style: GoogleFonts.poppins(
                                      color: Colors.blue[900],
                                      fontWeight: FontWeight.bold)),
                              Text('P350'),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text('Pax: ',
                                  style: GoogleFonts.poppins(
                                      color: Colors.blue[900],
                                      fontWeight: FontWeight.bold)),
                              Text('1'),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text('Points: ',
                                  style: GoogleFonts.poppins(
                                      color: Colors.blue[900],
                                      fontWeight: FontWeight.bold)),
                              Text('4.50'),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
