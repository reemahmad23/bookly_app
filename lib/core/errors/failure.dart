import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

abstract class Failure {
  final String errMessage;

  const Failure( this.errMessage);
  
}

  class ServerFailure extends Failure {
  ServerFailure(super.errMessage);
  
  factory ServerFailure.fromDioExp(DioException dioException) {
    switch (dioException.type) {
      
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServer');
      case DioExceptionType.badCertificate:
          return ServerFailure.fromResponse(
            dioException.response!.statusCode, dioException.response!.data);
      case DioExceptionType.badResponse:
        return ServerFailure('Internal Server error, please try later');

      case DioExceptionType.cancel:
        return ServerFailure('Request to ApiServer was canceled');

      case DioExceptionType.connectionError:
        return ServerFailure('No Internet connection');
  
      case DioExceptionType.unknown:
        return ServerFailure('Unexpected error, please try again!');

      default:
        return ServerFailure('Opps there was an error, please try again');


    }
    }

    factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
      if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
        return ServerFailure(response['error']['message']);
      }
      else if (statusCode == 404) {
        return ServerFailure('your request not found, please try later');
      }
      else if (statusCode == 500) {
        return ServerFailure('Internal Server error, please try later');
      } else {
        return ServerFailure('Opps there was an error, please try again');

      }

    }
  }
