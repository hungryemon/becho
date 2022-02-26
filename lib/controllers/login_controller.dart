import 'package:becho/views/views.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  GoogleSignIn googleSignIn = GoogleSignIn();

  signInWithGoogle() async {
    GoogleSignInAccount? googleUser = await googleSignIn.signIn();
    if (googleUser != null) {
      GoogleSignInAuthentication googleAuth = await googleUser.authentication;

      if (googleAuth.idToken != null && googleAuth.accessToken != null) {
        final AuthCredential credential = GoogleAuthProvider.credential(
            accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);

        final UserCredential user =
            await _auth.signInWithCredential(credential);

        await Get.to(const HomePage());
        //return user;
      } else {
        throw StateError('Authentication Error');
      }
    } else {
      throw StateError('Sign in Failed');
    }
  }

  Future<void> signOut() async {
    await googleSignIn.signOut();
    await _auth.signOut();

    //Get.back();

    // Navigate to Sign In again
    Get.offAll(const SignInPage());
  }
}
