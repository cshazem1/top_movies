import 'package:dio/dio.dart';

abstract class Failure{
final  String mesage;

  Failure(this.mesage);
}
class ServerFailure extends Failure{
  ServerFailure(super.mesage);
factory ServerFailure.fromDioError(DioException dioException){
  switch(dioException.type){

    case DioExceptionType.connectionTimeout:
return ServerFailure('connectionTimeout');
    case DioExceptionType.sendTimeout:
      return ServerFailure('sendTimeout');
    case DioExceptionType.receiveTimeout:
      return ServerFailure('receiveTimeout');
    case DioExceptionType.badCertificate:
      return ServerFailure('badCertificate');
    case DioExceptionType.badResponse:
      return ServerFailure.fromBadResponse(dioException.response!.statusCode!,dioException.response!.data);
    case DioExceptionType.cancel:
      return ServerFailure('cancel');
    case DioExceptionType.connectionError:
      return ServerFailure('connectionError');
    case DioExceptionType.unknown:
      if (dioException.message!.contains('SocketException')) {
        return ServerFailure("No Internet Connection");
      }
      return ServerFailure( "Unexpected Error");

    default:
      return ServerFailure(
           "Ops There was an Error ,please try again");
  }
  }
  factory ServerFailure.fromBadResponse(int statusCode,dynamic badRequest){

    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure( 'error');
    } else if (statusCode == 404) {
      return ServerFailure( "Method not Found");
    } else if (statusCode == 500) {
      return ServerFailure("Internal Server Error, please try again ");
    } else {
      return ServerFailure("Ops There was an Error ,please try again");
    }
  }
  }

