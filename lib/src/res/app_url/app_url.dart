import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppUrl{

  static  String loginUrl = '${dotenv.env['BASE_URL']}/auth/login';
}