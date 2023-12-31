import 'package:flutter/material.dart';

import '../../infrastructure/error/app_exception.dart';
import '../helpers/localization_helper.dart';

extension AppErrorExtension on Object {
  String errorMessage(BuildContext context) {
    final error = this;
    if (error is AppException) {
      return error.map(
        serverException: (ex) => ex.serverErrorMessage(context),
        // TODO(ABOUASSI): handle other cache exception error messages
        cacheException: (ex) => tr(context).unknownError,
      );
    }
    return tr(context).unknownError;
  }
}

extension _ServerErrorExtension on ServerException {
  String serverErrorMessage(BuildContext context) {
    switch (type) {
      case ServerExceptionType.general:
        return message; //Business logic error message from the backend
      case ServerExceptionType.unauthorized:
        return tr(context).unauthorizedError;
      case ServerExceptionType.forbidden:
        return tr(context).forbiddenError;
      case ServerExceptionType.notFound:
        return tr(context).notFoundError;
      case ServerExceptionType.conflict:
        return tr(context).conflictError;
      case ServerExceptionType.internal:
        return tr(context).internalError;
      case ServerExceptionType.serviceUnavailable:
        return tr(context).serviceUnavailableError;
      case ServerExceptionType.timeOut:
        return tr(context).timeoutError;
      case ServerExceptionType.noInternet:
        return tr(context).noInternetError;
      case ServerExceptionType.unknown:
        return tr(context).unknownError;
    }
  }
}
