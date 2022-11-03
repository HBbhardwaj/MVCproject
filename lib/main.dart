import 'package:flutter/material.dart';
import 'package:freshproject/app_routes/app_routes.dart';
import 'package:freshproject/app_routes/routes.dart';
import 'package:freshproject/utils/app_colors.dart';
import 'package:freshproject/utils/app_strings.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: AppStrings.appName,
      theme: ThemeData.light().copyWith(
        primaryColor: primaryColor,
      ),
      initialRoute: Routes.splashScreen,
      getPages: appRoutes(),
    );
  }
}
