import 'package:bmis_app/screens/booking_details_page.dart';
import 'package:bmis_app/widgets/appbar.dart';
import 'package:bmis_app/widgets/form_button.dart';
import 'package:bmis_app/widgets/form_text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookingFormFinalizationPage extends StatefulWidget {
  BookingFormFinalizationPage({Key key}) : super(key: key);

  @override
  _BookingFormFinalizationPageState createState() =>
      _BookingFormFinalizationPageState();
}

class _BookingFormFinalizationPageState
    extends State<BookingFormFinalizationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar('Finalization'),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20.0),
              decoration: new BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[200],
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
                      Text('Bus No: ',
                          style: GoogleFonts.poppins(
                              color: Colors.blue[900],
                              fontWeight: FontWeight.bold)),
                      Text('B403'),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text('Plate: ',
                          style: GoogleFonts.poppins(
                              color: Colors.blue[900],
                              fontWeight: FontWeight.bold)),
                      Text('FSB-0102'),
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
                      Text('Distance: ',
                          style: GoogleFonts.poppins(
                              color: Colors.blue[900],
                              fontWeight: FontWeight.bold)),
                      Text('220KM'),
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
                  Row(
                    children: <Widget>[
                      Text('Terminal: ',
                          style: GoogleFonts.poppins(
                              color: Colors.blue[900],
                              fontWeight: FontWeight.bold)),
                      Text('Dagupan'),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text('Booked: ',
                          style: GoogleFonts.poppins(
                              color: Colors.blue[900],
                              fontWeight: FontWeight.bold)),
                      Text('31/60'),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text('No of Pax: ',
                          style: GoogleFonts.poppins(
                              color: Colors.blue[900],
                              fontWeight: FontWeight.bold)),
                      Text('1'),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text('Amount: ',
                          style: GoogleFonts.poppins(
                              color: Colors.blue[900],
                              fontWeight: FontWeight.bold)),
                      Text('P300'),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Your reservation is almost done.'
                          '\n Payment is required to finalize your booking.'
                          '\n  Click Book to proceed to your payment.')
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
                  FormButton(
                    btnText: 'Book',
                    pressed: () => navigateToBookingDetailsPage(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  navigateToBookingDetailsPage() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => BookingDetailsPage()),
      (Route<dynamic> route) => false,
    );
  }
}
