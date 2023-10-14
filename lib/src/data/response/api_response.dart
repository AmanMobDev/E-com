import 'package:ecom/src/data/response/status.dart';

class ApiResponse<T>{
  Status? status;
  T? data;
  String? message;

  ApiResponse.loading():status = Status.LOADING;
  ApiResponse.completed(this.data):status = Status.COMPLETED;
  ApiResponse.error(this.message):status = Status.ERROR;

  @override
  String toString(){
    return "Status : $status \n Data : $data \n Message : $message";
  }
}