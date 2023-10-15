import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:ecom/src/data/app_exception.dart';
import 'package:ecom/src/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;
import '../../utils/utils.dart';

class NetworkApiServices extends BaseApiServices {
  @override
  Future getApi(String url) async {
    Utils.printRequestLogs(url: url);
    dynamic responseJson;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException();
    } on TimeoutException {
      throw RequestTimeOutException();
    } on Exception catch (e) {
      Utils.printExceptionLogs(data: e.toString());
    }
    return responseJson;
  }

  @override
  Future postApi(String url, dynamic data) async {
    Utils.printRequestLogs(url: url, data: data.toString());
    dynamic responseJson;
    try {
      final response = await http
          .post(Uri.parse(url), body: data)
          .timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException();
    } on TimeoutException {
      throw RequestTimeOutException();
    } on Exception catch (e) {
      Utils.printExceptionLogs(data: e.toString());
    }
    return responseJson;
  }
}

dynamic returnResponse(http.Response response) {
  switch (response.statusCode) {
    case 200:
      dynamic responseJson = jsonDecode(response.body);
      Utils.printResponseLogs(data: responseJson);
      return responseJson;
    case 400:
      dynamic responseJson = jsonDecode(response.body);
      Utils.printResponseLogs(data: responseJson);
      return responseJson;
    case 500:
      throw ServerException();
    default:
      throw FetchDataException();
  }
}
