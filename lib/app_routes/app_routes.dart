import 'package:freshproject/app_routes/routes.dart';
import 'package:freshproject/screens/home.dart';
import 'package:freshproject/screens/splash_screen.dart';
import 'package:get/get.dart';

appRoutes() => [
      ///---- screen page ---///
      GetPage(
        name: Routes.splashScreen,
        page: () => SplashScreen(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 500),
      ),

      ///---- home page ---///
      GetPage(
        name: Routes.homeScreen,
        page: () => HomeScreen(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 500),
      ),
    ];
