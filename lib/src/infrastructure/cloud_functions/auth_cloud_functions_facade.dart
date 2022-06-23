import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:intl/intl.dart';

abstract class AuthCloudFunctionsFacade {
  Future<Unit> checkIfUserCanSignIn(String email);

  Future<Unit> checkIfPartnerCanSignIn(String email);

  Future<Unit> checkIfPartnerCanSignUp({
    required String email,
    required String accessCode,
  });

  Future<Unit> checkIfSelectorCanSignIn(String email);

  Future<Unit> checkIfSelectorCanSignUp({
    required String email,
    required String accessCode,
  });

  Future<Unit> addUser({
    required String userId,
    required String email,
  });

  Future<Unit> addPartner({
    required String partnerId,
    required String email,
    required String accessCode,
  });

  Future<Unit> addSelector({
    required String selectorId,
    required String email,
    required String accessCode,
  });
}

class AuthCloudFunctionsFacadeImpl implements AuthCloudFunctionsFacade {
  final Dio _dio;

  AuthCloudFunctionsFacadeImpl(this._dio);

  @override
  Future<Unit> checkIfUserCanSignIn(String email) async {
    const endpoint = 'auth/checkIfUserCanSignIn';

    final data = {'email': email};

    await _dio.post(endpoint, data: data);

    return unit;
  }

  @override
  Future<Unit> addUser({
    required String userId,
    required String email,
  }) async {
    const endpoint = 'auth/addUser';

    final data = {
      'userId': userId,
      'email': email,
      'locale': Intl.getCurrentLocale(),
    };

    await _dio.post(endpoint, data: data);

    return unit;
  }

  @override
  Future<Unit> addPartner({
    required String partnerId,
    required String email,
    required String accessCode,
  }) async {
    const endpoint = 'auth/addPartner';

    final data = {
      'partnerId': partnerId,
      'email': email,
      'accessCode': accessCode,
      'locale': Intl.getCurrentLocale(),
    };

    await _dio.post(endpoint, data: data);

    return unit;
  }

  @override
  Future<Unit> addSelector({
    required String selectorId,
    required String email,
    required String accessCode,
  }) async {
    const endpoint = 'auth/addSelector';

    final data = {
      'selectorId': selectorId,
      'email': email,
      'accessCode': accessCode,
    };

    await _dio.post(endpoint, data: data);

    return unit;
  }

  @override
  Future<Unit> checkIfPartnerCanSignIn(String email) async {
    const endpoint = 'auth/checkIfPartnerCanSignIn';

    final data = {'email': email};

    await _dio.post(endpoint, data: data);

    return unit;
  }

  @override
  Future<Unit> checkIfPartnerCanSignUp({
    required String email,
    required String accessCode,
  }) async {
    const endpoint = 'auth/checkIfPartnerCanSignUp';

    final data = {
      'email': email,
      'accessCode': accessCode,
    };

    await _dio.post(endpoint, data: data);

    return unit;
  }

  @override
  Future<Unit> checkIfSelectorCanSignIn(String email) async {
    const endpoint = 'auth/checkIfSelectorCanSignIn';

    final data = {'email': email};

    await _dio.post(endpoint, data: data);

    return unit;
  }

  @override
  Future<Unit> checkIfSelectorCanSignUp({
    required String email,
    required String accessCode,
  }) async {
    const endpoint = 'auth/checkIfSelectorCanSignUp';

    final data = {
      'email': email,
      'accessCode': accessCode,
    };

    await _dio.post(endpoint, data: data);

    return unit;
  }
}
