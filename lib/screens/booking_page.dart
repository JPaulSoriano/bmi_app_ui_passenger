import 'package:bmis_app/screens/booking_result_page.dart';
import 'package:bmis_app/widgets/appbar.dart';
import 'package:bmis_app/widgets/form_button.dart';
import 'package:bmis_app/widgets/form_text_field.dart';
import 'package:flutter/material.dart';

class BookingPage extends StatefulWidget {
  BookingPage({Key key}) : super(key: key);

  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar('Book'),
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
                  FormTextField(
                    icon: Icons.location_on,
                    hint: 'From',
                  ),
                  FormTextField(
                    icon: Icons.location_on,
                    hint: 'To',
                  ),
                  FormTextField(
                    icon: Icons.date_range,
                    hint: 'Date',
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
                  Column(
                    children: [
                      Column(children: [
                        FormButton(
                          btnText: 'Search',
                          pressed: () => navigateToBookingResultPage(),
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

  navigateToBookingResultPage() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => BookingResultPage()),
      (Route<dynamic> route) => false,
    );
  }
}
