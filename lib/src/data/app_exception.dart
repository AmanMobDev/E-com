import 'package:get/get_utils/get_utils.dart';

class AppException implements Exception {
  final _prefix;
  final _message;

  AppException([this._prefix, this._message]);

  @override
  String toString() {
    return "$_prefix$_message";
  }
}

///Below class is used for handle internet exception
class InternetException extends AppException {
  InternetException() : super('no_internet'.tr);
}

///Below class is used for handle request time out exception
class RequestTimeOutException extends AppException {
  RequestTimeOutException() : super('request_time_out'.tr);
}


class ServerException extends AppException{
  ServerException([String? message]): super('Internal server error');
}


class FetchDataException extends AppException{
  FetchDataException([String? message]): super('Error while communication');
}


