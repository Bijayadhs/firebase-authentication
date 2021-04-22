import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_authentication/provider/google_sign_in_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignedInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('You are logged in'),
          SizedBox(height: 20),
          Text('Name: ${user.displayName}'),
          Text('Email: ${user.email}'),
          ElevatedButton(
            onPressed: () {
              final provider =
                  Provider.of<GoogleSignInProvider>(context, listen: false);
              provider.logout();
            },
            child: Text('Logout'),
          ),
        ],
      ),
    );
  }
}
