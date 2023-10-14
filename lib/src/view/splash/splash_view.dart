import 'package:ecom/src/view_model/controller/splash_controller/splash_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  final splashController = Get.put(SplashViewModel());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "welcome_back".tr,
          style: const TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
