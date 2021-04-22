import 'package:firebase_authentication/provider/google_sign_in_provider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class GoogleSignupWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: OutlineButton.icon(
        label: Text(
          'SignIn with Google',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        icon: FaIcon(FontAwesomeIcons.google, color: Colors.red[400]),
        onPressed: () {
          final provider =
              Provider.of<GoogleSignInProvider>(context, listen: false);
          provider.login();
        },
        shape: StadiumBorder(),
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        highlightedBorderColor: Colors.black,
        borderSide: BorderSide(color: Colors.black),
        textColor: Colors.black,
      ),
    );
  }
}
