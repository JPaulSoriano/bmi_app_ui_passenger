import 'package:bmis_app/screens/booking_form_page.dart';
import 'package:bmis_app/widgets/appbar.dart';
import 'package:bmis_app/widgets/form_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookingResultPage extends StatefulWidget {
  BookingResultPage({Key key}) : super(key: key);

  @override
  _BookingResultPageState createState() => _BookingResultPageState();
}

class _BookingResultPageState extends State<BookingResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar('Result'),
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
                children: [
                  Row(
                    children: [
                      Text(
                        'Five Star',
                        style: GoogleFonts.poppins(
                            color: Colors.blue[900],
                            fontWeight: FontWeight.w900,
                            fontSize: 24.0),
                      ),
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
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      RaisedButton(
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "Book",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        onPressed: () {
                          navigateToBookingFormPage();
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
          ],
        ),
      ),
    );
  }

  navigateToBookingFormPage() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => BookingFormPage()),
      (Route<dynamic> route) => false,
    );
  }
}
