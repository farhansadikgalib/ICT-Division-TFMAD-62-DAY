import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInProvider extends ChangeNotifier {
  final googleSignIn = GoogleSignIn();

  bool _isSigningIn = false;

  GoogleSignInProvider() {
    _isSigningIn = false;
  }

  bool get isSigningIn => _isSigningIn;

  set isSigninIn(bool isSigninIn) {
    _isSigningIn = isSigninIn;
    notifyListeners();
  }

  Future login() async {
    isSigninIn = true;

    final user = await googleSignIn.signIn();

    if (user == null) {
      isSigninIn = false;
      return;
    } else {
      final googleAuth = await user.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      await FirebaseAuth.instance.signInWithCredential(credential);
    }

  }
  void logout() async {
    await googleSignIn.disconnect();
    FirebaseAuth.instance.signOut();
  }


}
