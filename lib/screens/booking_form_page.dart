import 'package:bmis_app/screens/booking_form_finalization_page.dart';
import 'package:bmis_app/screens/booking_result_page.dart';
import 'package:bmis_app/widgets/appbar.dart';
import 'package:bmis_app/widgets/form_button.dart';
import 'package:bmis_app/widgets/form_text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookingFormPage extends StatefulWidget {
  BookingFormPage({Key key}) : super(key: key);

  @override
  _BookingFormPageState createState() => _BookingFormPageState();
}

class _BookingFormPageState extends State<BookingFormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar('Booking Form'),
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
                      Text('30/60'),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Column(
                children: [
                  FormTextField(
                    icon: Icons.person_outline,
                    hint: 'No of Pax',
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
                  FormButton(
                    btnText: 'Proceed',
                    pressed: () => navigateToBookingFormFinalizationPage(),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FormButton(
                    btnText: 'Cancel',
                    pressed: () => navigateToBookingResultPage(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  navigateToBookingResultPage() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => BookingResultPage()),
      (Route<dynamic> route) => false,
    );
  }

  navigateToBookingFormFinalizationPage() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => BookingFormFinalizationPage()),
      (Route<dynamic> route) => false,
    );
  }
}
