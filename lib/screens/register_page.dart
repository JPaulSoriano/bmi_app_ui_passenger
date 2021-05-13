import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bmis_app/widgets/form_button.dart';
import 'package:bmis_app/widgets/form_text_field.dart';
import 'package:bmis_app/widgets/label_button.dart';

import 'login_page.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 70),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 80.0,
                  child: Image.asset(
                    "assets/logo.png",
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 20),
                FormTextField(
                  icon: Icons.person_outline,
                  hint: 'First Name',
                ),
                FormTextField(
                  icon: Icons.person_outline,
                  hint: 'Last Name',
                ),
                FormTextField(
                  icon: Icons.verified_user,
                  hint: 'Username',
                ),
                FormTextField(
                  icon: Icons.phone_android,
                  hint: 'Phone Number',
                  keyboardType: TextInputType.number,
                ),
                FormTextField(
                  icon: Icons.email_outlined,
                  hint: 'Email Address',
                  keyboardType: TextInputType.emailAddress,
                ),
                FormTextField(
                  icon: Icons.lock_outline,
                  hint: 'Password',
                  pass: true,
                ),
                FormButton(
                  btnText: 'Create Account',
                  pressed: () => navigateToLoginPage(),
                ),
                SizedBox(
                  height: 20,
                ),
                LabelButton(
                  liteText: 'Already Registered?',
                  boldText: ' Sign In.',
                  pressed: () => navigateToLoginPage(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  navigateToLoginPage() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
      (Route<dynamic> route) => false,
    );
  }
}
