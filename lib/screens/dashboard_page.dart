import 'package:bmis_app/screens/book_tacking_page.dart';
import 'package:bmis_app/screens/booking_page.dart';
import 'package:bmis_app/screens/my_bookings_page.dart';
import 'package:bmis_app/widgets/appbar.dart';
import 'package:bmis_app/widgets/form_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardPage extends StatefulWidget {
  DashboardPage({Key key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar('Dashboard'),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: new BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[100],
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Welcome!',
                        style: GoogleFonts.poppins(
                            color: Colors.blue[900],
                            fontWeight: FontWeight.w900,
                            fontSize: 24.0),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Passenger P. Passenger!',
                        style: GoogleFonts.poppins(
                            color: Colors.blue[900],
                            fontWeight: FontWeight.normal,
                            fontSize: 18.0),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      RaisedButton(
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "My Bookings",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        onPressed: () {
                          navigateToMyBookingsPage();
                        },
                        color: Colors.blue[900],
                        textColor: Colors.white,
                        padding: EdgeInsets.all(8.0),
                        splashColor: Colors.grey,
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              decoration: new BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[100],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Ticket #: ',
                        style: GoogleFonts.poppins(
                            color: Colors.blue[900],
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0),
                      ),
                      Text(
                        'A054501',
                        style: GoogleFonts.poppins(
                            color: Colors.blue[900],
                            fontWeight: FontWeight.normal,
                            fontSize: 18.0),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.60,
                        child: Image.asset(
                          "assets/qr.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.60,
                        child: RaisedButton(
                          elevation: 0.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            "Track",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () {
                            navigateToBookTrackingPage();
                          },
                          color: Colors.blue[900],
                          textColor: Colors.white,
                          padding: EdgeInsets.all(8.0),
                          splashColor: Colors.grey,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Column(
                children: [
                  Column(
                    children: [
                      Column(children: [
                        FormButton(
                          btnText: 'Book Now',
                          pressed: () => navigateToBookingPage(),
                        ),
                      ]),
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

  navigateToBookingPage() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => BookingPage()),
      (Route<dynamic> route) => false,
    );
  }

  navigateToMyBookingsPage() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => MyBookingsPage()),
      (Route<dynamic> route) => false,
    );
  }

  navigateToBookTrackingPage() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => BookTrackingPage()),
      (Route<dynamic> route) => false,
    );
  }
}
