import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:raver_common/raver_common.dart';

FirebaseCrashlytics Function() get crashlyticsConfig => () {
      final crashlytics = FirebaseCrashlytics.instance;

      try {
        final currentUser = FirebaseAuth.instance.tryGetFirebaseUser();
        crashlytics.setUserIdentifier(currentUser.uid);
      } on NotAuthenticatedError {}

      return crashlytics;
    };
