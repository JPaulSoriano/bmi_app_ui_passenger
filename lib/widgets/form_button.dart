import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FormButton extends StatelessWidget {
  final String btnText;
  final Function pressed;

  const FormButton({Key key, this.btnText, this.pressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      height: 60.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      minWidth: MediaQuery.of(context).size.width * 1,
      color: Colors.blue[900],
      onPressed: pressed,
      child: Text(
        btnText,
        style: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
