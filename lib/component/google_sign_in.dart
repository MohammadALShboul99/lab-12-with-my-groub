import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:semifinal/screens/home.dart';
import 'package:semifinal/screens/login_screen.dart';
import 'package:semifinal/screens/screen%201.dart';
import 'package:semifinal/screens/screen2.dart';
import 'package:semifinal/screens/sign_up_screen.dart';

class GoogleLogin extends ChangeNotifier {
  authState() {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return const Screenone();
        } else {
          return const Screentwo();
        }
      },
    );
  }

  Future googlelogin() async {
    GoogleSignInAccount? googleUser =
        await GoogleSignIn(scopes: <String>["email"]).signIn();

    GoogleSignInAuthentication googleAuth = await googleUser!.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  signO() {
    FirebaseAuth.instance.signOut();
  }
}
