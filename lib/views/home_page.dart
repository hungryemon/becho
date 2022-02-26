import 'package:becho/controllers/controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = Get.put(LoginController());
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                                onPressed: () => controller.signOut(),
                                child: const Center(
                                    child: Text(
                                  "Sign Out",
                                  style: TextStyle(color: Colors.black),
                                )),
                              ),
          ],
        )
      ),
    );
  }
}