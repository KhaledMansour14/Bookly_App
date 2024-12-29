import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

abstract class Failure {
  final String errMessage;
  const Failure({required this.errMessage});
}

class ServerFalilure extends Failure {
  ServerFalilure({required super.errMessage});

  factory ServerFalilure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFalilure(errMessage: 'Connection timeout');
      case DioExceptionType.sendTimeout:
        return ServerFalilure(errMessage: 'Send timeout');
      case DioExceptionType.receiveTimeout:
        return ServerFalilure(errMessage: 'Receive timeout');
      case DioExceptionType.badCertificate:
        if (dioError.message!.contains('SocketException')) {
          return ServerFalilure(errMessage: 'No Internet Connection');
        }
        return ServerFalilure(errMessage: 'Unexpected Error, Pls try again');
      case DioExceptionType.badResponse:
        return ServerFalilure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFalilure(
            errMessage: 'Request to ApiServer was Canceld timeout');
      case DioExceptionType.connectionError:
        if (dioError.message!.contains('SocketException')) {
          return ServerFalilure(errMessage: 'No Internet Connection');
        }
        return ServerFalilure(errMessage: 'Unexpected Error, Pls try again');
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFalilure(errMessage: 'No Internet Connection');
        }
        return ServerFalilure(errMessage: 'Unexpected Error, Pls try again');
      // default: return ServerFalilure(errMessage: 'Opps There was an Error, Pls try again');
    }
  }
  factory ServerFalilure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFalilure(errMessage: response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFalilure(
          errMessage: 'Your request not found, pls try again later');
    } else if (statusCode == 500) {
      return ServerFalilure(errMessage: 'Internal Server error, Pls try later');
    } else {
      return ServerFalilure(
          errMessage: 'Opps There was an Error, Pls try again');
    }
  }
}
