import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations{
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US':{
      'email_hint': 'Enter email',
      'no_internet': 'No Internet\nplease check your wifi or mobile Data',
      'request_time_out': 'Request time out\nPlease retry',
      'welcome_back': 'Welcome Back',
    },
  };

}