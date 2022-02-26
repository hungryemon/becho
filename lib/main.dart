import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes/routes.dart';


Future<void> main() async {
  
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const BechoApp());
}

class BechoApp extends StatelessWidget {
  const BechoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BECHO',
      theme: ThemeData(primarySwatch:  Colors.yellow),
      themeMode: ThemeMode.light,
      defaultTransition: Transition.fadeIn,
      getPages: AppPages.routes,
      initialRoute: AppRoutes.LOGIN,
      enableLog: true,
       navigatorObservers: <NavigatorObserver>[
        GetObserver(),
      ],
    );
  }
}

