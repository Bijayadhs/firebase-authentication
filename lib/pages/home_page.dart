import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_authentication/pages/sign_up_page.dart';
import 'package:firebase_authentication/pages/signed_in_page.dart';
import 'package:firebase_authentication/provider/google_sign_in_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ChangeNotifierProvider(
        create: (context) => GoogleSignInProvider(),
        child: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              final provider = Provider.of<GoogleSignInProvider>(context);
              if (provider.isSigningIn) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasData) {
                return SignedInPage();
              } else {
                return SignUpPage();
              }
            }),
      ),
    );
  }
}
