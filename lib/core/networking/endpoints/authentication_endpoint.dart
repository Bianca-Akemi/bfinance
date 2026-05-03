import 'package:s_mobills/core/networking/model/request/endpoint.dart';
import 'package:s_mobills/core/networking/model/request/request_method.dart';
import 'package:s_mobills/core/networking/model/request/url_request.dart';

enum AuthenticationEndpoint implements Endpoint {
  login,
  logout,
  createAccount,
  deleteAccount,
  info,
  edit,
  profilePhoto,
  uploadProfilePhoto;

  @override
  String get path {
    switch (this) {
      case login:
        return '/auth/login';
      case logout:
        return '/auth/logout';
      case createAccount:
        return '/user';
      case deleteAccount:
        return '/user';
      case info:
        return '/user';
      case edit:
        return '/user';
      case profilePhoto:
        return '/user/profile-photo';
      case uploadProfilePhoto:
        return '/user/profile-photo';
    }
  }

  @override
  RequestMethod get method {
    switch (this) {
      case login || logout || createAccount:
        return RequestMethod.POST;
      case deleteAccount:
        return RequestMethod.DELETE;
      case info:
        return RequestMethod.GET;
      case edit:
        return RequestMethod.PUT;
      case profilePhoto:
        return RequestMethod.GET;
      case uploadProfilePhoto:
        return RequestMethod.PUT;
    }
  }

  @override
  bool get requiresAuthentication {
    switch (this) {
      case login || createAccount:
        return false;
      case deleteAccount || info || edit || logout:
        return true;
      case profilePhoto:
        return true;
      case uploadProfilePhoto:
        return true;
    }
  }

  @override
  URLRequest asRequest() {
    return URLRequest(
      method: method.value,
      path: path,
      requiresAuthentication: requiresAuthentication,
    );
  }
}
