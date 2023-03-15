import 'package:common/common.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';

FirebaseCrashlytics Function() get crashlyticsConfig => () {
      final crashlytics = FirebaseCrashlytics.instance;

      try {
        final currentUser = FirebaseAuth.instance.tryGetFirebaseUser();
        crashlytics.setUserIdentifier(currentUser.uid);
      } on NotAuthenticatedError {
        // This happens when user is not authenticated when launching an app
      }

      return crashlytics;
    };
