import 'dart:async';

import 'package:get/get.dart';

import '../../../res/routes/routes_name.dart';

class SplashViewModel extends GetxController {
  @override
  void onInit() {
    super.onInit();
    isLogin();
  }

  void isLogin() {
    Timer(
      const Duration(seconds: 3),
      () => Get.offAllNamed(Routes.loginView),
    );
  }
}
