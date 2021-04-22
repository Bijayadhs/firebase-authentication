import 'package:firebase_authentication/widgets/google_signup_widget.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Spacer(),
          Container(
            margin: EdgeInsets.all(20),
            width: 175,
            child: Text(
              'Welcome to my App',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Spacer(),
          GoogleSignupWidget(),
          SizedBox(height: 12),
          Text(
            'Login to continue',
            style: TextStyle(fontSize: 16),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
