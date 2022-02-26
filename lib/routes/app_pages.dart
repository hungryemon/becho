import 'package:becho/routes/routes.dart';
import 'package:becho/views/views.dart';
import 'package:get/get.dart';

class AppPages {
  static final List<GetPage<dynamic>> routes = <GetPage<dynamic>>[
    GetPage<SignInPage>(
      name: AppRoutes.LOGIN,
      page: () => const SignInPage(),
      transition: Transition.fadeIn,
      preventDuplicates: true,
    ),
    GetPage<HomePage>(
      name: AppRoutes.HOME,
      page: () => const HomePage(),
      transition: Transition.fadeIn,
      preventDuplicates: true,
    ),
    
  ];
}