
import 'package:flutter/foundation.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class Utils {


  static toastMessages({String? message}) {
    Fluttertoast.showToast(
      msg: message!,
      gravity: ToastGravity.SNACKBAR,
    );
  }

  static snackBarMessages({String? title, String? message}) {
    Get.snackbar(
        title!,
        message!,
        snackPosition: SnackPosition.BOTTOM
    );
  }

  static dynamic printOnError({dynamic data}) {
    if (kDebugMode) {
      return print("OnError Block :: ${data.toString()}");
    }
  }

  static dynamic printStatement({dynamic data}) {
    if (kDebugMode) {
      return print("Here Your Print Statement ::: ${data.toString()}");
    }
  }

  static dynamic printRequestLogs({String? url, dynamic data}) {
    if (kDebugMode) {
      return print("API REQUEST BODY :: ${data.toString()} \nURL ::$url");
    }
  }

  static dynamic printResponseLogs({dynamic data}) {
    if (kDebugMode) {
      return print("API RESPONSE BODY :: ${data.toString()}");
    }
  }

  static dynamic printExceptionLogs({dynamic data}) {
    if (kDebugMode) {
      return print("Exception :: ${data.toString()}");
    }
  }
}
