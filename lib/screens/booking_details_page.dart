import 'package:bmis_app/screens/my_bookings_page.dart';
import 'package:bmis_app/widgets/appbar.dart';
import 'package:bmis_app/widgets/form_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookingDetailsPage extends StatefulWidget {
  BookingDetailsPage({Key key}) : super(key: key);

  @override
  _BookingDetailsPageState createState() => _BookingDetailsPageState();
}

class _BookingDetailsPageState extends State<BookingDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar('Booking Details'),
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
                    children: [
                      Text(
                        'Ticket #: ',
                        style: GoogleFonts.poppins(
                            color: Colors.blue[900],
                            fontWeight: FontWeight.w900,
                            fontSize: 16.0),
                      ),
                      Text('A054501'),
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
                      Text('No of Pax: ',
                          style: GoogleFonts.poppins(
                              color: Colors.blue[900],
                              fontWeight: FontWeight.bold)),
                      Text('1'),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text('Dest. Terminal: ',
                          style: GoogleFonts.poppins(
                              color: Colors.blue[900],
                              fontWeight: FontWeight.bold)),
                      Text('Cubao'),
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
                  Row(
                    children: <Widget>[
                      Text('Bus Points: ',
                          style: GoogleFonts.poppins(
                              color: Colors.blue[900],
                              fontWeight: FontWeight.bold)),
                      Text('4.50'),
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
                    children: [
                      Text('QR code must be scanned by the'
                          '\n bus conductors as you board the bus.')
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
                    btnText: 'Done',
                    pressed: () => navigateToMyBookingsPage(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  navigateToMyBookingsPage() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => MyBookingsPage()),
      (Route<dynamic> route) => false,
    );
  }
}
