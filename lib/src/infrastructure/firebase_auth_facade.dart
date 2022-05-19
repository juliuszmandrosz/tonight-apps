import 'package:cloud_functions/cloud_functions.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';
import 'package:raver_auth/raver_auth.dart';

class FirebaseAuthFacade
    implements
        UserAuthFacade,
        PartnerAuthFacade,
        SelectorAuthFacade,
        CommonAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final Logger _logger;
  final AuthCloudFunctionsFacade _authCloudFunctionsFacade;

  FirebaseAuthFacade({
    required FirebaseAuth firebaseAuth,
    required GoogleSignIn googleSignIn,
    required Logger logger,
    required AuthCloudFunctionsFacade authCloudFunctionsFacade,
  })  : _firebaseAuth = firebaseAuth,
        _googleSignIn = googleSignIn,
        _logger = logger,
        _authCloudFunctionsFacade = authCloudFunctionsFacade;

  @override
  Future<Either<AuthFailure, Unit>> sendSignInEmailLinkForPartner(
    String email,
  ) async {
    try {
      await _authCloudFunctionsFacade.checkIfAccountExists(email);
      await _authCloudFunctionsFacade.checkPartnerClaim(email);
      await _sendSignInLinkForPartner(email);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      _logger.e(
        "Auth Exception sending sign in email link for partner EXCEPTION: $e",
      );
      return left(
        AuthFailure(message: firebaseAuthMessages[e.code] ?? serverError),
      );
    } on FirebaseFunctionsException catch (e) {
      _logger.e(
        "Functions Exception sending sign in email link for partner EXCEPTION: $e",
      );
      return left(
        AuthFailure(message: firebaseAuthMessages[e.code] ?? serverError),
      );
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> sendSignUpEmailLinkForPartner({
    required String email,
    required String accessCode,
  }) async {
    try {
      await _authCloudFunctionsFacade.checkIfAccountNotExists(email);
      await _authCloudFunctionsFacade.checkPartnerClaim(email);
      await _authCloudFunctionsFacade.checkPartnerAccessCode(accessCode);
      await _sendSignInLinkForPartner(email);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      _logger.e(
        "Auth Exception sending sign up email link for partner EXCEPTION: $e",
      );
      return left(
        AuthFailure(message: firebaseAuthMessages[e.code] ?? serverError),
      );
    } on FirebaseFunctionsException catch (e) {
      _logger.e(
        "Functions Exception sending sign up email link for partner EXCEPTION: $e",
      );
      return left(
        AuthFailure(
          message: firebaseAuthMessages[e.details] ??
              firebaseAuthMessages[e.code] ??
              serverError,
        ),
      );
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailLinkAsPartner({
    required String email,
    required Uri link,
  }) async {
    try {
      if (!_firebaseAuth.isSignInWithEmailLink(link.toString())) {
        return left(AuthFailure(message: invalidLink));
      }

      await _signInWithEmailLink(email, link.toString());

      return right(unit);
    } on FirebaseAuthException catch (e) {
      _logger.e(
        "Auth Exception signing in with email link as partner EXCEPTION: $e",
      );
      return left(
        AuthFailure(message: firebaseAuthMessages[e.code] ?? serverError),
      );
    } on FirebaseFunctionsException catch (e) {
      _logger.e(
        "Functions Exception signing in with email link as partner EXCEPTION: $e",
      );
      return left(
        AuthFailure(message: firebaseAuthMessages[e.code] ?? serverError),
      );
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signUpWithEmailLinkAndAccessCodeAsPartner({
    required String email,
    required Uri link,
    required String accessCode,
  }) async {
    try {
      if (!_firebaseAuth.isSignInWithEmailLink(link.toString())) {
        return left(AuthFailure(message: invalidLink));
      }

      await _signInWithEmailLink(email, link.toString());

      await _authCloudFunctionsFacade.addPartner(accessCode);

      return right(unit);
    } on FirebaseAuthException catch (e) {
      _logger.e(
        "Auth Exception signing up with email link and access code as partner EXCEPTION: $e",
      );
      return left(
        AuthFailure(message: firebaseAuthMessages[e.code] ?? serverError),
      );
    } on FirebaseFunctionsException catch (e) {
      await signOut();
      _logger.e(
        "Functions Exception signing up with email link and access code as partner EXCEPTION: $e",
      );
      return left(
        AuthFailure(
          message: firebaseAuthMessages[e.details] ??
              firebaseAuthMessages[e.code] ??
              serverError,
        ),
      );
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> sendSignInEmailLinkForSelector(
    String email,
  ) async {
    try {
      await _authCloudFunctionsFacade.checkIfAccountExists(email);
      await _authCloudFunctionsFacade.checkSelectorClaim(email);
      await _sendSignInLinkForSelector(email);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      _logger.e(
        "Auth Exception sending sign in email link for selector EXCEPTION: $e",
      );
      return left(
        AuthFailure(message: firebaseAuthMessages[e.code] ?? serverError),
      );
    } on FirebaseFunctionsException catch (e) {
      _logger.e(
        "Functions Exception sending sign in email link for selector EXCEPTION: $e",
      );
      return left(
        AuthFailure(message: firebaseAuthMessages[e.code] ?? serverError),
      );
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> sendSignUpEmailLinkForSelector({
    required String email,
    required String accessCode,
  }) async {
    try {
      await _authCloudFunctionsFacade.checkIfAccountNotExists(email);
      await _authCloudFunctionsFacade.checkSelectorClaim(email);
      await _authCloudFunctionsFacade.checkSelectorAccessCode(accessCode);
      await _sendSignInLinkForSelector(email);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      _logger.e(
        "Auth Exception sending sign up email link for selector EXCEPTION: $e",
      );
      return left(
        AuthFailure(message: firebaseAuthMessages[e.code] ?? serverError),
      );
    } on FirebaseFunctionsException catch (e) {
      _logger.e(
        "Functions Exception sending sign up email link for selector EXCEPTION: $e",
      );
      return left(
        AuthFailure(
          message: firebaseAuthMessages[e.details] ??
              firebaseAuthMessages[e.code] ??
              serverError,
        ),
      );
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailLinkAsSelector({
    required String email,
    required Uri link,
  }) async {
    try {
      if (!_firebaseAuth.isSignInWithEmailLink(link.toString())) {
        return left(AuthFailure(message: invalidLink));
      }

      await _signInWithEmailLink(email, link.toString());

      return right(unit);
    } on FirebaseAuthException catch (e) {
      _logger.e(
        "Auth Exception signing in with email link as selector EXCEPTION: $e",
      );
      return left(
        AuthFailure(message: firebaseAuthMessages[e.code] ?? serverError),
      );
    } on FirebaseFunctionsException catch (e) {
      _logger.e(
        "Functions Exception signing in with email link as selector EXCEPTION: $e",
      );
      return left(
        AuthFailure(message: firebaseAuthMessages[e.code] ?? serverError),
      );
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signUpWithEmailLinkAndAccessCodeAsSelector({
    required String email,
    required Uri link,
    required String accessCode,
  }) async {
    try {
      if (!_firebaseAuth.isSignInWithEmailLink(link.toString())) {
        return left(AuthFailure(message: invalidLink));
      }

      await _signInWithEmailLink(email, link.toString());

      await _authCloudFunctionsFacade.addSelector(accessCode);

      return right(unit);
    } on FirebaseAuthException catch (e) {
      _logger.e(
        "Auth Exception signing up with email link and access code as selector EXCEPTION: $e",
      );
      return left(
        AuthFailure(message: firebaseAuthMessages[e.code] ?? serverError),
      );
    } on FirebaseFunctionsException catch (e) {
      await signOut();
      _logger.e(
        "Functions Exception signing up with email link and access code as selector EXCEPTION: $e",
      );
      return left(
        AuthFailure(
          message: firebaseAuthMessages[e.details] ??
              firebaseAuthMessages[e.code] ??
              serverError,
        ),
      );
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> sendSignInEmailLinkForUser(
    String email,
  ) async {
    try {
      await _authCloudFunctionsFacade.checkUserClaim(email);
      await _sendSignInLinkForUser(email);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      _logger.e(
        "Auth Exception sending sign in email link for user EXCEPTION: $e",
      );
      return left(
        AuthFailure(message: firebaseAuthMessages[e.code] ?? serverError),
      );
    } on FirebaseFunctionsException catch (e) {
      _logger.e(
        "Functions Exception sending sign in email link for user EXCEPTION: $e",
      );
      return left(
        AuthFailure(message: firebaseAuthMessages[e.code] ?? serverError),
      );
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailLinkAsUser({
    required String email,
    required Uri link,
  }) async {
    try {
      if (!_firebaseAuth.isSignInWithEmailLink(link.toString())) {
        return left(AuthFailure(message: invalidLink));
      }

      final result = await _signInWithEmailLink(email, link.toString());

      await _addUserToFirestoreIfNotExists(result);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      _logger.e(
        "Auth Exception signing in with email link as user EXCEPTION: $e",
      );
      return left(
        AuthFailure(message: firebaseAuthMessages[e.code] ?? serverError),
      );
    } on FirebaseFunctionsException catch (e) {
      _logger.e(
        "Functions Exception signing in with email link as user EXCEPTION: $e",
      );
      return left(
        AuthFailure(message: firebaseAuthMessages[e.code] ?? serverError),
      );
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogleAsUser() async {
    try {
      final googleUser = await _googleSignIn.signIn();

      if (googleUser == null) {
        return left(AuthFailure(message: cancelledByUser));
      }

      final googleAuth = await googleUser.authentication;

      final result = await _signInWithGoogleCredential(googleAuth);

      final email = result.user!.email!;

      await _authCloudFunctionsFacade.checkUserClaim(email);

      await _addUserToFirestoreIfNotExists(result);

      return right(unit);
    } on FirebaseAuthException catch (e) {
      _logger.e(
        "Exception during sign in "
        "with Google as user EXCEPTION: $e",
      );
      return left(
        AuthFailure(message: firebaseAuthMessages[e.code] ?? serverError),
      );
    } on FirebaseFunctionsException catch (e) {
      await signOut();
      _logger.e(
        "Firebase Function Exception during "
        "sign in with Google as user EXCEPTION: $e",
      );
      return left(
        AuthFailure(message: firebaseAuthMessages[e.code] ?? serverError),
      );
    }
  }

  @override
  Future<Option<AppUser>> getSignedUser() async {
    try {
      final firebaseUser = _firebaseAuth.currentUser;

      if (firebaseUser == null) return none();

      final userEmail = _getUserEmail(firebaseUser);

      await _authCloudFunctionsFacade.checkUserClaim(userEmail);

      return some(firebaseUser.toDomain());
    } on FirebaseFunctionsException catch (e) {
      await signOut();
      _logger.e(
        "Firebase Functions Exception during "
        "getting signed user EXCEPTION: $e",
      );
      return none();
    }
  }

  @override
  Future<Option<AppUser>> getSignedPartner() async {
    try {
      final firebaseUser = _firebaseAuth.currentUser;

      if (firebaseUser == null) return none();

      await _authCloudFunctionsFacade.checkPartnerClaim(firebaseUser.email!);

      return some(firebaseUser.toDomain());
    } on FirebaseFunctionsException catch (e) {
      await signOut();
      _logger.e(
        "Firebase Functions Exception during "
        "getting signed partner EXCEPTION: $e",
      );
      return none();
    }
  }

  @override
  Future<Option<AppUser>> getSignedSelector() async {
    try {
      final firebaseUser = _firebaseAuth.currentUser;

      if (firebaseUser == null) return none();

      await _authCloudFunctionsFacade.checkSelectorClaim(firebaseUser.email!);

      return some(firebaseUser.toDomain());
    } on FirebaseFunctionsException catch (e) {
      await signOut();
      _logger.e(
        "Firebase Functions Exception during "
        "getting signed selector EXCEPTION: $e",
      );
      return none();
    }
  }

  @override
  Future<Stream<Option<AppUser>>> listenToAuthStateChange() {
    return Future.value(
      _firebaseAuth
          .authStateChanges()
          .map((user) => user != null ? some(user.toDomain()) : none()),
    );
  }

  @override
  Future<Either<AuthFailure, Unit>> sendForgotPasswordEmail(
      String email) async {
    try {
      await _firebaseAuth.setLanguageCode(Intl.getCurrentLocale());
      await _firebaseAuth.sendPasswordResetEmail(email: email);
      return right(unit);
    } on FirebaseException catch (e) {
      _logger.e("Exception during sending password reset email: $e");
      return left(
        AuthFailure(message: firebaseAuthMessages[e.code] ?? serverError),
      );
    }
  }

  @override
  Future<void> signOut() {
    return Future.wait([
      _googleSignIn.signOut(),
      _firebaseAuth.signOut(),
    ]);
  }

  Future<void> _addUserToFirestoreIfNotExists(
    UserCredential userCredential,
  ) async {
    final isNewUser = userCredential.additionalUserInfo!.isNewUser;

    if (isNewUser) {
      await _authCloudFunctionsFacade.addUser();
    }
  }

  Future<UserCredential> _signInWithGoogleCredential(
      GoogleSignInAuthentication googleAuth) async {
    final authCredential = GoogleAuthProvider.credential(
      idToken: googleAuth.idToken,
      accessToken: googleAuth.accessToken,
    );
    return _firebaseAuth.signInWithCredential(authCredential);
  }

  String _getUserEmail(User user) {
    return user.email ?? user.providerData.first.email!;
  }

  Future<UserCredential> _signInWithEmailLink(
    String email,
    String link,
  ) async {
    return _firebaseAuth.signInWithEmailLink(
      email: email,
      emailLink: link.toString(),
    );
  }

  Future<void> _sendSignInLinkForUser(String email) async {
    await _firebaseAuth.sendSignInLinkToEmail(
      email: email,
      actionCodeSettings: ActionCodeSettings(
        url: 'https://raverteam.page.link',
        handleCodeInApp: true,
        iOSBundleId: 'com.raver',
        androidPackageName: 'com.raverteam.raver',
        dynamicLinkDomain: 'raverteam.page.link',
      ),
    );
  }

  Future<void> _sendSignInLinkForSelector(String email) async {
    await _firebaseAuth.sendSignInLinkToEmail(
      email: email,
      actionCodeSettings: ActionCodeSettings(
        url: 'https://raverscanner.page.link',
        handleCodeInApp: true,
        iOSBundleId: 'com.raverteam.raverScanner',
        androidPackageName: 'com.raverteam.raverScanner',
        dynamicLinkDomain: 'raverscanner.page.link',
      ),
    );
  }

  Future<void> _sendSignInLinkForPartner(String email) async {
    await _firebaseAuth.sendSignInLinkToEmail(
      email: email,
      actionCodeSettings: ActionCodeSettings(
        url: 'https://tonightpartners.page.link',
        handleCodeInApp: true,
        iOSBundleId: 'com.raverteam.tonightPartners',
        androidPackageName: 'com.raverteam.tonightPartners',
        dynamicLinkDomain: 'tonight.page.link',
      ),
    );
  }
}
