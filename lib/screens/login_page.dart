import 'package:bmis_app/screens/dashboard_page.dart';
import 'package:bmis_app/widgets/form_button.dart';
import 'package:bmis_app/widgets/form_text_field.dart';
import 'package:bmis_app/widgets/label_button.dart';
import 'package:flutter/material.dart';
import 'register_page.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
            child: SingleChildScrollView(
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
                    icon: Icons.email_outlined,
                    hint: 'Email Address',
                    keyboardType: TextInputType.emailAddress,
                  ),
                  FormTextField(
                    icon: Icons.lock_outline,
                    hint: 'Password',
                    pass: true,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: LabelButton(
                      liteText: '',
                      boldText: 'Forgot Password?',
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  FormButton(
                    btnText: 'Sign In',
                    pressed: () => navigateToDashboardPage(),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  LabelButton(
                    liteText: 'Not registered yet?',
                    boldText: ' Create Account.',
                    pressed: () => navigateToRegisterPage(),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  navigateToDashboardPage() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => DashboardPage()),
      (Route<dynamic> route) => false,
    );
  }

  navigateToRegisterPage() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => RegisterPage()),
      (Route<dynamic> route) => false,
    );
  }
}
