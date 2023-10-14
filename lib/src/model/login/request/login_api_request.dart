
class LoginApiRequestModel {
  String? username;
  String? password;

  LoginApiRequestModel({this.username, this.password});

  Map<String, dynamic> toJson() => {
    "username": username,
    "password": password,
  };
}
