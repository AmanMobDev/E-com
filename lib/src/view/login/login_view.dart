import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../view_model/controller/login_controller/login_view_model.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final loginViewModel = Get.put(LoginViewModel());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          loginViewModel.loginApi();
        },
        child: const Icon(
          Icons.account_circle_outlined,
        ),
      ),
    );
  }
}
