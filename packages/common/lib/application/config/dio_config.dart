import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:raver_common/raver_common.dart';

Dio Function() get dioConfig => () => Dio(
      BaseOptions(
        baseUrl: dotenv.env[apiEndpoint]!,
        headers: getHttpHeaders(),
      ),
    )..interceptors.add(dioInterceptor);
