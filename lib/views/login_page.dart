import 'package:becho/controllers/controllers.dart';
import 'package:becho/views/views.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    if (controller.googleSignIn.currentUser == null) {
      return Scaffold(
          body: Center(
              child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Welcome to BECHO!",
              style: TextStyle(fontSize: 29, fontWeight: FontWeight.w900),
              textAlign: TextAlign.center,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () => controller.signInWithGoogle(),
                child: const Center(
                    child: Text(
                  "Sign In with Google",
                  style: TextStyle(color: Colors.black),
                )),
              ),
            )
          ],
        ),
      )));
    }
    else {
      return const HomePage();
    }
  }
}
