import 'package:ecom/src/res/getx_loclization/languages.dart';
import 'package:ecom/src/res/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

Future<void> main() async {
  await dotenv.load(fileName: "assets/.env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: Languages(),
      locale: const Locale('en','US'),
      fallbackLocale: const Locale('en','US'),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: AppRoutes.appRoutes(),
    );
  }
}


