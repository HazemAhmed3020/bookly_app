
import 'package:dio/dio.dart';

abstract class Failure{
  final String errMessage;

  Failure(this.errMessage);

}

class ServerFailure extends Failure{
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioError(DioException dioException){
      switch(dioException.type) {
        case DioExceptionType.connectionTimeout:
          return ServerFailure('Connection timeout with ApiServer');
        case DioExceptionType.sendTimeout:
          return ServerFailure('Send timeout with ApiServer');
        case DioExceptionType.receiveTimeout:
          return ServerFailure('Receive timeout with ApiServer');
        case DioExceptionType.badCertificate:
          return ServerFailure('Bad Certificate with ApiServer');
        case DioExceptionType.badResponse:
          return ServerFailure.fromResponse(dioException.response!.statusCode! , dioException.response!.data);
        case DioExceptionType.cancel:
          return ServerFailure('Cancel Error , try again');
        case DioExceptionType.connectionError:
          return ServerFailure('Connection Error , try again later');
        case DioExceptionType.unknown:
          return ServerFailure('Unknown Error , try again later');

      }
  }
  factory ServerFailure.fromResponse(int statuCode , dynamic response){
    if(statuCode == 400 || statuCode == 401 || statuCode == 403){
      return ServerFailure(response['error']['message']);
    }
    else if(statuCode == 404){
      return ServerFailure('Your request not found , try again later');
    }
    else if(statuCode == 500){
      return ServerFailure('Internal Server Error , try again later');
    }
    else {
      return ServerFailure('oops , there was an error , try again');
    }
  }
}