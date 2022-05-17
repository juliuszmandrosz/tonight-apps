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
  Future<Either<AuthFailure, Unit>> sendSignInEmailLinkForUser(
    String email,
  ) async {
    try {
      await _authCloudFunctionsFacade.checkUserClaim(email);
      await _firebaseAuth.sendSignInLinkToEmail(
        email: email,
        actionCodeSettings: ActionCodeSettings(
          url: 'https://raverteam.page.link',
          handleCodeInApp: true,
          iOSBundleId: 'com.raver',
          androidPackageName: 'com.raverteam.raver',
        ),
      );
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

      final result = await _firebaseAuth.signInWithEmailLink(
        email: email,
        emailLink: link.toString(),
      );

      await _addUserToFirestoreIfNotExists(result);
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
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPasswordAsPartner({
    required String email,
    required String password,
  }) async {
    try {
      await _authCloudFunctionsFacade.checkPartnerClaim(email);
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      _logger.e(
        "Exception during sign in "
        "with login and password as partner EXCEPTION: $e",
      );
      return left(
        AuthFailure(message: firebaseAuthMessages[e.code] ?? serverError),
      );
    } on FirebaseFunctionsException catch (e) {
      _logger.e(
        "Firebase Functions Exception during "
        "sign in with login and password as partner EXCEPTION: $e",
      );
      return left(
        AuthFailure(message: firebaseAuthMessages[e.code] ?? serverError),
      );
    }
  }

  // TODO - Implement onboarding for partners
  @override
  Future<Either<AuthFailure, Unit>> signUpWithEmailAndPasswordAsPartner({
    required String email,
    required String password,
    required String connectedAccountId,
  }) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      await _authCloudFunctionsFacade.addPartner(connectedAccountId);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      _logger.e(
        "Exception during register with "
        "login and password as partner EXCEPTION: $e",
      );
      return left(
        AuthFailure(message: firebaseAuthMessages[e.code] ?? serverError),
      );
    } on FirebaseFunctionsException catch (e) {
      await signOut();
      _logger.e(
        "Firebase Functions Exception during register"
        " with login and password as partner EXCEPTION: $e",
      );
      return left(
        AuthFailure(message: firebaseAuthMessages[e.code] ?? serverError),
      );
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPasswordAsSelector(
    String email,
    String password,
  ) async {
    try {
      await _authCloudFunctionsFacade.checkSelectorClaim(email);
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      _logger.e(
        "Firebase Auth Exception during sign in with email and password as selector EXCEPTION: $e",
      );
      return left(
        AuthFailure(message: firebaseAuthMessages[e.code] ?? serverError),
      );
    } on FirebaseFunctionsException catch (e) {
      _logger.e(
        "Firebase Functions Exception during "
        "sign in with login and password as selector EXCEPTION: $e",
      );
      return left(
        AuthFailure(message: firebaseAuthMessages[e.code] ?? serverError),
      );
    }
  }

  @override
  Future<Either<AuthFailure, Unit>>
      signUpWithEmailPasswordAndAccessCodeAsSelector(
    String email,
    String password,
    String accessCode,
  ) async {
    try {
      await _authCloudFunctionsFacade.checkSelectorAccessCode(accessCode);

      await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);

      await _authCloudFunctionsFacade.addSelector(email, accessCode);
      return right(unit);
    } on FirebaseFunctionsException catch (e) {
      _logger.e(
        "Firebase Functions Exception during sign up with email and password as selector EXCEPTION: $e",
      );

      return left(
        AuthFailure(
          message: firebaseAuthMessages[e.details] ??
              firebaseAuthMessages[e.code] ??
              serverError,
        ),
      );
    } on FirebaseAuthException catch (e) {
      _logger.e(
        "Firebase Auth Exception during  sign up with email and password as selector EXCEPTION: $e",
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
      UserCredential userCredential) async {
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
}
