import 'package:flutter/cupertino.dart';
import 'package:freshproject/common_widget/common_button.dart';
import 'package:freshproject/common_widget/common_container.dart';
import 'package:freshproject/utils/app_images.dart';
import 'package:freshproject/utils/app_strings.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  var isLoding = false.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(() => CommonContainer(
          widget: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Visibility(
                child: Image.asset(AppImages.hindi),
                visible: isLoding.value,
              ),
              CommonButton(
                text: AppStrings.home,
                onTap: () {
                  isLoding.value = !isLoding.value;
                },
              )
            ],
          ),
          width: 400,
          height: 50,
          pLeft: 20,
          pRight: 20,
        ));
  }
}
