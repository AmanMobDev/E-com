import 'package:ecom/src/data/network/network_api_services.dart';
import 'package:ecom/src/model/login/response/login_api_response.dart';

import '../../model/login/request/login_api_request.dart';
import '../../res/app_url/app_url.dart';
import '../../utils/utils.dart';

class LoginRepository {
  final _api = NetworkApiServices();

  Future<LoginResponseModel> loginRepository(LoginApiRequestModel loginApiRequest) async {
  dynamic response =   await _api.postApi(AppUrl.loginUrl, loginApiRequest.toJson());
  return LoginResponseModel.fromJson(response);
  }
}
