import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:raver_common/raver_common.dart';
import 'package:typesense/typesense.dart';

Function get typesenseConfig => () {
      final host = FirebaseRemoteConfig.instance.getString(typesenseClusterId);
      const protocol = Protocol.https;
      final config = Configuration(
        FirebaseRemoteConfig.instance.getString(typesenseApiKey),
        nodes: {
          Node(
            protocol,
            host,
            port: 443,
          ),
        },
        numRetries: 3,
        connectionTimeout: const Duration(seconds: 2),
      );

      return Client(config);
    };
