import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freshproject/app_routes/routes.dart';
import 'package:freshproject/common_widget/common_text_widget.dart';
import 'package:freshproject/utils/app_colors.dart';
import 'package:freshproject/utils/app_strings.dart';
import 'package:get/get.dart';

import '../common_widget/common_button.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: CommonButton(
              text: AppStrings.home,
              onTap: () {
                Get.offAllNamed(Routes.homeScreen);
              })),
    );
  }
}
