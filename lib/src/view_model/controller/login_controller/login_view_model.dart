import 'package:ecom/src/model/login/response/login_api_response.dart';
import 'package:get/get.dart';

import '../../../data/response/status.dart';
import '../../../model/login/request/login_api_request.dart';
import '../../../repository/login/login_repository.dart';
import '../../../utils/utils.dart';

class LoginViewModel extends GetxController{
  final _apiRepository = LoginRepository();

  final rxRequestStatus = Status.LOADING.obs;
  final loginResponseModel = LoginResponseModel().obs;

  void setRequestStatus(Status _value) => rxRequestStatus.value = _value;
  void setLoginResponse(LoginResponseModel _loginResponseModel) => loginResponseModel.value = _loginResponseModel;


  void loginApi() {
    _apiRepository
        .loginRepository(LoginApiRequestModel(
        username: "kminchelle", password: "0lelplR"))
        .then((value) {
    setRequestStatus(Status.COMPLETED);
    setLoginResponse(value);
      Utils.snackBarMessages(
          title: "Response", message: value.toString());
    })
        .onError((error, stackTrace) {
    setRequestStatus(Status.ERROR);
      Utils.snackBarMessages(title: "Error", message: error.toString());
    });

    update();
  }
}