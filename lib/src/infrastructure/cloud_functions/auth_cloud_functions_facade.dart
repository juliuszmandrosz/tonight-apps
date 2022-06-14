import 'package:cloud_functions/cloud_functions.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:intl/intl.dart';
import 'package:raver_auth/src/infrastructure/cloud_functions/cloud_function_names.dart';

abstract class AuthCloudFunctionsFacade {
  Future<Unit> checkUserClaim(String email);

  Future<Unit> checkPartnerClaim(String email);

  Future<Unit> checkSelectorClaim(String email);

  Future<Unit> addUser({
    required String userId,
    required String email,
  });

  Future<Unit> addPartner(String accessCode);

  Future<Unit> addSelector(String accessCode);

  Future<Unit> checkPartnerAccessCode(String accessCode);

  Future<Unit> checkSelectorAccessCode(String accessCode);

  Future<Unit> checkIfAccountExists(String email);

  Future<Unit> checkIfAccountNotExists(String email);
}

class AuthCloudFunctionsFacadeImpl implements AuthCloudFunctionsFacade {
  final FirebaseFunctions _functions;
  final Dio _dio;

  AuthCloudFunctionsFacadeImpl({
    required FirebaseFunctions firebaseFunctions,
    required Dio dio,
  })  : _functions = firebaseFunctions,
        _dio = dio;

  @override
  Future<Unit> checkUserClaim(String email) async {
    const endpoint = 'auth/checkUserClaim';

    final data = {'email': email};

    await _dio.post(endpoint, data: data);

    return unit;
  }

  @override
  Future<Unit> checkPartnerClaim(String email) async {
    final checkPartnerClaimFn =
        _functions.httpsCallable(checkPartnerClaimFnName);

    await checkPartnerClaimFn.call({'email': email});

    return unit;
  }

  @override
  Future<Unit> checkSelectorClaim(String email) async {
    final checkSelectorClaimFn =
        _functions.httpsCallable(checkSelectorClaimFnName);

    await checkSelectorClaimFn.call({'email': email});

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
  Future<Unit> addPartner(String accessCode) async {
    final addPartnerFn = _functions.httpsCallable(addPartnerFnName);

    await addPartnerFn.call({
      'accessCode': accessCode,
      'locale': Intl.getCurrentLocale(),
    });

    return unit;
  }

  @override
  Future<Unit> addSelector(String accessCode) async {
    final addSelectorFn = _functions.httpsCallable(addSelectorFnName);

    await addSelectorFn.call({'accessCode': accessCode});

    return unit;
  }

  @override
  Future<Unit> checkPartnerAccessCode(String accessCode) async {
    final checkPartnerAccessCodeFn =
        _functions.httpsCallable(checkPartnerAccessCodeFnName);

    await checkPartnerAccessCodeFn.call({'accessCode': accessCode});

    return unit;
  }

  @override
  Future<Unit> checkSelectorAccessCode(String accessCode) async {
    final checkSelectorAccessCodeFn =
        _functions.httpsCallable(checkSelectorAccessCodeFnName);

    await checkSelectorAccessCodeFn.call({'accessCode': accessCode});

    return unit;
  }

  @override
  Future<Unit> checkIfAccountExists(String email) async {
    final checkIfAccountExistsFn =
        _functions.httpsCallable(checkIfAccountExistsFnName);

    await checkIfAccountExistsFn.call({'email': email});

    return unit;
  }

  @override
  Future<Unit> checkIfAccountNotExists(String email) async {
    final checkIfAccountNotExistsFn =
        _functions.httpsCallable(checkIfAccountNotExistsFnName);

    await checkIfAccountNotExistsFn.call({'email': email});

    return unit;
  }
}
