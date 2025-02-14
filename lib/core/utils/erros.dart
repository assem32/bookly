import 'package:dio/dio.dart';

abstract class Failure{
  final String errorMessage;
  Failure(this.errorMessage);


}

class ServerFailure extends Failure{
  ServerFailure(super.errorMessage);
  factory ServerFailure.fromDioError(DioException dioException){
    switch(dioException.type){

      case DioExceptionType.connectionTimeout:
        return ServerFailure('Timeout error');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send Timeout error');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Recive Timeout error');
      case DioExceptionType.badCertificate:
        return ServerFailure('bad certificate');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(dioException.response!.statusCode, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request cancled');
      case DioExceptionType.connectionError:
        return ServerFailure('No Internet Connection');
      case DioExceptionType.unknown:
        if(dioException.message!.contains('SocketException')){
          return ServerFailure('No internet connection');
        }
        return ServerFailure('Opps There was an Error, Please try again');
      default:
        return ServerFailure('Opps There was an Error, Please try again');
    }
  }

  factory ServerFailure.fromResponse(int? status,dynamic respose){
    if (status==400||status==401||status==403){
      return ServerFailure(respose['error']['message']);
    }
    else if(status==404){
      return ServerFailure('Internal server error');
    }
    else if(status==500){
      return ServerFailure('Request not found');
    }
    return ServerFailure('Oops unkown error');
  }
}